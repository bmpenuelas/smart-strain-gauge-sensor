/**
 * @file   GaugeProbe.ino
 * @author Borja Penuelas
 * @date   22 Jul 2017
 * @brief  Use a gauge wtith an HX711 as bed probe sensor. 
 */

// INCLUDES

#include "HX711ext.h"


// DEFINES

//!\todo Set gain to maximize input span.
#define CALIBRATION_FACTOR -1000.0 

#define THRESHOLD_D1   1.0
//! Detect a fast change
#define THRESHOLD_D1P2 1.5  
//! Detect a long change
#define THRESHOLD_D1P2_ACC 25.0  

#define THRESHOLD_D2   1.0
#define THRESHOLD_D2P2 25.0  
#define THRESHOLD_D2P2_ACC 25.5  

//! Min value in D1 opposite sign that indicates dir change.
//! Avoid noise resetting the accum.
#define THRESHOLD_DIR_CHNG 0.1  

//! Assertion polarity.
#define ASSERT_PROBE  0
#define DEASSERT_PROBE  !ASSERT_PROBE


// PINS
#define LED_PIN 13

#define DOUT  3
#define CLK  2

#define PROBE_PIN  4




// GLOBAL VARIABLES
HX711ext gauge(DOUT, CLK);

double meas, measZ1;
double d1, d1Z1, d1OneDir, d1OneDirZ1, d2, d2OneDir;
double d1P2, d1P2acc, d1OneDirP2, d2P2, d2P2acc, d2OneDirP2;

boolean accumulating, dir, probeAssert;

// SETUP
void setup(){
  //! Pin Modes
  pinMode(LED_PIN, OUTPUT);
  pinMode(PROBE_PIN, OUTPUT);

  Serial.begin(115200);
  // Serial.println("DERIVATIVE FILTER TEST");

  gauge.set_scale(CALIBRATION_FACTOR); //\todo Set correct factor
  gauge.tare();

}


// LOOP
void loop() {
  measZ1 = meas;
  meas = gauge.get_units(10);


  //! D1
  d1Z1 = d1;
  d1 = meas - measZ1;
  d1P2 = d1*d1;

  //! D1 OneDir
  d1OneDirZ1 = d1OneDir; 
  d1OneDir = (d1 < 0)? d1 : 0;
  d1OneDirP2 = d1OneDir*d1OneDir;

  //! D2
  d2 = d1 - d1Z1;
  d2P2 = d2*d2;

  //! D2 OneDir
  d2OneDir = (d2 < 0)? d2 : 0;
  d2OneDirP2 = d2OneDir*d2OneDir;



  //! Accum when going in the touching dir
  if(!accumulating){
    if(d1P2>THRESHOLD_D1P2 && d1>0.0){
      accumulating = 1;
      dir = (d1>0.0)? 1 : 0;
      d1P2acc = d1P2;
    }
  }else{
    if((d1>=THRESHOLD_DIR_CHNG && dir==0) || (d1<=-THRESHOLD_DIR_CHNG && dir==1)){
      accumulating = 0;
      d1P2acc = 0;
    }else{
      d1P2acc += d1P2;
    }
  }

  //! Activate probe output
  probeAssert = (d1P2acc > THRESHOLD_D1P2_ACC)? 1 : 0;


  //! OUTPUTS

  // Serial.print(meas);
  // Serial.print(", ");

  // Serial.print(d1);
  // Serial.print(", ");
  // Serial.print(d1P2);
  // Serial.print(", ");

  // Serial.print(accumulating);
  // Serial.print(", ");
  // Serial.print(probeAssert);
  // Serial.print(", ");
  // Serial.print(d1P2acc);

  // Serial.print("\n");

  uint32_t rawReading = gauge.read();
  uint16_t u16reading = gauge.read_u16();

  Serial.print(rawReading);
  Serial.print(", ");
  Serial.print(u16reading);
  Serial.print("\n");

  if(probeAssert){
    digitalWrite(PROBE_PIN, ASSERT_PROBE);
    digitalWrite(LED_PIN, 1);
    // Serial.print("X,");
  }else{
    digitalWrite(PROBE_PIN, DEASSERT_PROBE);
    digitalWrite(LED_PIN, 0);
  }


}
