#ifndef __BS__
#define __BS__

#include "Date.h"
#include "BsData.h"
#include "Ad.h"

class Ad;

class Bs:public Date {
public:
    Bs();
    Bs(suint y,suint m,suint d);
    Bs(const Ymd& a);
    Bs(const Bs& b);
    Bs(const Ad& b);
    int operator-(const Bs& b) const;
    Bs operator-(int no) const;
    Bs operator+(int no) const ;
public:
    Ad firstday() const; // ENGLISH FIRST DAY OF THE MONTH
};

#endif
