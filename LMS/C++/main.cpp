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

void handleEmail(const std::string &email) {
    std::cout << "Email received in C++: " << email << std::endl;
}


extern "C" void sendEmailToCPP(const char *email) {
    if (email != nullptr) {
        std::string cppEmail(email);
       // handleEmail(cppEmail);
    }
}
