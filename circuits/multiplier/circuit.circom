pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template MyCustomCircuit () {  

 //signal inputs
   signal input a;
   signal input b;

   //signal from gates
   signal x;
   signal y;

   //signal output
   signal output q;

   //component gates to create circuit
   component andGate = AND();
   component notGate = NOT();
   component orGate = OR();

   //logic for circuit

   //for AND gate
   andGate.a <== a;
   andGate.b <== b;

   x <== andGate.out;

    //for Not Gate  
    notGate.in <== b;

    y <== notGate.out;

    //for or gate
     orGate.a <== x;
     orGate.b <== y;

    q <== orGate.out; 

// conditional statement
   
      var condition = (a == 0 && b == 1);
if (condition) {
    log("When a=0 and b=1, the value of q is", q);
}
   

}
template AND() {
    signal input b;
    signal input a;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = MyCustomCircuit();
