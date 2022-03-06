/**
 * @file   TestHX711ext.ino
 * @author Borja Penuelas
 * @date   8 Aug 2017
 * @brief  Test HX711ext lib. 
 */

// INCLUDES

#include "HX711ext.h"


// DEFINES

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

uint32_t rawReading;
uint16_t u16reading;

// SETUP
void setup(){
  //! Pin Modes
  pinMode(LED_PIN, OUTPUT);
  pinMode(PROBE_PIN, OUTPUT);

  Serial.begin(115200);

  gauge.sample_for_span(5000);
  gauge.set_digital_att();

}


// LOOP
void loop() {
  rawReading = gauge.read();
  u16reading = gauge.read_u16();

  Serial.print(rawReading);
  Serial.print(", ");
  Serial.print(u16reading);

  Serial.print("\n");

}
