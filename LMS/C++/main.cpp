//
//  main.cpp
//  LMS
//
//  Created by Sara Noor on 07/06/2024.
//

#include "main.h"
#include <iostream>

class Person {
    const char * name;
public:
    Person(const char * n): name(n){}
    const char * getName(){
        return name;
    }
};

const char * returnName() {
    Person a("Manal Rehman");
    return a.getName();
    
}
