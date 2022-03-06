/**
 * @file   RecordSamples.ino
 * @author Borja Penuelas
 * @date   16 Jul 2017
 * @brief  Get raw samples from the gauge bridge
 */

// INCLUDES
#include "HX711.h"

//DEFINES
#define CALIBRATION_FACTOR -7050.0 //This value is obtained using the SparkFun_HX711_Calibration sketch

#define DOUT  3
#define CLK  2

// GLOBAL VARIABLES
HX711 gauge(DOUT, CLK);


void setup(){
  Serial.begin(115200);
  // Serial.println("DERIVATIVE FILTER TEST");

  gauge.set_scale(CALIBRATION_FACTOR); //\todo Set correct factor
  gauge.tare();

}


void loop() {
  Serial.print((int)gauge.get_units()); //gauge.get_units() returns a float
  Serial.println();
  // Serial.print(",");
}
