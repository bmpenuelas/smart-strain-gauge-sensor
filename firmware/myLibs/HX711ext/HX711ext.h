#include "HX711.h"


// Enable debug serial prints
// #define DEBUG


#ifndef HX711ext_h
#define HX711ext_h

#if ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

//! Extend the HX711 class to work with uint16_t readings
class HX711ext : public HX711 {
  public:
    // Creators for setting byte and channel or leave to be set later.
    HX711ext(uint8_t dout, uint8_t pd_sck, uint8_t gain = 128);
  
    virtual ~HX711ext();
  
    // Channel (0 for CH A, 1 for CH B)
    uint8_t  channel = 1;

    // Signal span parameters
    uint32_t span    = 1;
    uint32_t min_val = 0;
    uint32_t max_val = 1;
  
    // Recommended settings for working with uint16_t readings.
    //! If true, digital attenuation will not be needed to fit uint16_t.
    bool     span_fits_uint16;
    //! Greatest Gain that allows for the full span to fit uint16_t.
    uint16_t max_gain_fits_uint16 = 128;
    //! Digital attenuation that must be set to use uint16_t with minimum
    //! precission loss. Expresseded in logical shifts >> to decrease calc time.
    uint16_t digital_att;
  

    //! Set span.
    void     set_span(uint32_t arg_min_val, uint32_t arg_max_val);
  
    //! Sample during a givent time and for span, min_val and max_val.
    //! During this time the sensor should register it's peak values.
    void     sample_for_span(uint32_t ms = 10e3);
  
    //! Check if current span would fit uint16_t.
    bool     check_span_fits_uint16(uint32_t arg_min_val, uint32_t arg_max_val);
    bool     HX711ext::check_span_fits_uint16(uint32_t arg_span);
    bool     check_span_fits_uint16();
  
    //! Calculate and configure the HX711 with the maxGainFitsUint16.
    bool     set_max_gain_fits_uint16();
  
    //! Calculate and use digital attenuation. This will lead to more
    //! precission than set_max_gain_fits_uint16 at the expense of a few
    //! CPU cycles.
    void     set_digital_att();


    //! Set gain and/or change channel. 128 or 64 for channel A; channel B 
    //! works with 32 gain factor only.
    void     set_gain(uint8_t gain = 128);

    //! Read scaled to uint16_t span.
    uint16_t read_u16();

  private:
    //! Using digital attenuation or using maxGainFitsUint16
    bool     using_digital_att;


};

#endif // HX711ext_h
