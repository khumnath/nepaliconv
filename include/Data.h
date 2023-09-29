#ifndef __DATAA__
#define __DATAA__

#include "ex.h"
#include "Ymd.h"
#include <iostream>

class Data {
private:
    // date information
    static const suint data[][13];
    // minumum,maximum date
    static const Ymd minimum,maximum;
public:
    // Returns number of days in a month (0-11) or number of days in year (12)
    virtual int get(suint yy,suint mm) const =0;
    // Returns number of days in a year
    virtual int get(suint yy) const =0;
    // Retuns the minumum date of which data is available
    virtual const Ymd& min() const =0;
    // Retuns the maximum date of which data is available
    virtual const Ymd& max() const = 0;
    // Virtual Destructor
    virtual ~Data()=0;
};

inline Data::~Data() {};

#endif
