#include "HX711.h"

#include <Arduino.h>
#include <HX711ext.h>


// DEFINES
#define U16_MAX 0xFFFFFFFF


// Constructor and destructor
HX711ext::HX711ext(uint8_t dout, uint8_t pd_sck, uint8_t gain) : HX711(dout, pd_sck, gain) {
  channel = (gain == 32)? 1 : 0;
}

HX711ext::~HX711ext(){}



  void     HX711ext::set_span(uint32_t arg_min_val, uint32_t arg_max_val) {
    min_val = arg_min_val;
    max_val = arg_max_val;
    span    = max_val - min_val;
  }
  
  
  void     HX711ext::sample_for_span(uint32_t ms = 10e3) {
    uint32_t end_millis = millis()+ms;
    uint32_t sampled_val;
    min_val = U16_MAX;
    max_val = 0;
  
    while(millis() < end_millis){
      sampled_val = read();
      if(sampled_val > max_val){
        max_val = sampled_val;
      }else if(sampled_val < min_val){
        min_val = sampled_val;
      };
    }

    span = max_val - min_val;

    #ifdef DEBUG
      Serial.print("min_val = ");
      Serial.println(min_val);
      Serial.print("max_val = ");
      Serial.println(max_val);
      Serial.print("span = ");
      Serial.println(span);
    #endif
  }
  
  
  bool     HX711ext::check_span_fits_uint16(uint32_t arg_min_val, uint32_t arg_max_val) {
    uint32_t arg_span = arg_max_val - arg_min_val;

    if((arg_span >> 16) == 0){
      return true;
    }else{
      return false;
    }
  }

  bool     HX711ext::check_span_fits_uint16(uint32_t arg_span) {
    if((arg_span >> 16) == 0){
      return true;
    }else{
      return false;
    }
  }

  bool     HX711ext::check_span_fits_uint16() {
    if((span >> 16) == 0){
      return true;
    }else{
      return false;
    }
  }
  
  bool     HX711ext::set_max_gain_fits_uint16() {
    if (channel == 0){
      set_gain( check_span_fits_uint16()? 128 : 64 );
      using_digital_att = 0;
    }else{
      set_gain( 32 );
    }
  }
  
  
  void     HX711ext::set_digital_att() {
    uint8_t shifts = 0;
  
    while(check_span_fits_uint16( (span >> shifts) ) == false){
      shifts +=1;
    }

    digital_att = shifts;
    using_digital_att = 1;

    #ifdef DEBUG
      Serial.print("shifts = ");
      Serial.println(shifts);
      Serial.print("using_digital_att = ");
      Serial.println(using_digital_att);
    #endif
  }
  
  
  
  void     HX711ext::set_gain(uint8_t gain = 128){
    channel = (gain == 32)? 1 : 0;
    HX711::set_gain(gain);
  }


  uint16_t HX711ext::read_u16(){
    uint32_t reading = read();

    // Clip value to u16 range.
    reading = (reading > min_val)? reading - min_val : 0;

    if (using_digital_att) reading = (reading >> digital_att);

    if((reading >> 16) != 0) reading = 0xFFFF;
    return reading;
  }