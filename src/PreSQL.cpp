#include <iostream>
#include "PreSQL.h"

using namespace std;

void PreSQL::HelloWorld() {

    cout << "Hello World!\n";
}

int main () {

    PreSQL* compiler = new PreSQL;
    compiler->HelloWorld();

    return 0;
}
