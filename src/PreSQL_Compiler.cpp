#include <iostream>
#include "PreSQL_Compiler.h"

using namespace std;

void PreSQL_Compiler::HelloWorld() {

    cout << "Hello World!\n";
}

int main () {

    PreSQL_Compiler* compiler = new PreSQL_Compiler;
    compiler->HelloWorld();

    return 0;
}
