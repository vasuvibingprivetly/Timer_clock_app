//in hybrid inheritence one parent class needed......

import 'dart:io';

class A {
  late int a;

  void set setA(int a) => this.a = a;

  void getA() {
    print("a: $a");
  }
}

class B extends A {
  late int b;

  void set setB(int b) => this.b = b;

  void getB() {
    print("b: $b");
  }
}

class C extends A {
  late int c;

  void set setC(int c) => this.c = c;

  void getC() {
    print("c: $c");
  }
}

class D extends C {
  late int d;

  void set setD(int d) => this.d = d;

  void getD() {
    print("d: $d");
  }
}

int getInt({String varName = "values"}) {
  stdout.write("Enter $varName: ");
  return int.parse(stdin.readLineSync() ?? "0");
}

void main() {
  B b = B();
  D d = D();

  b
    ..setA = getInt(varName: "a")
    ..setB = getInt(varName: "b")
    ..getA()
    ..getB();

  d
    ..setA = getInt(varName: "a")
    ..setC = getInt(varName: "c")
    ..setD = getInt(varName: "d")
    ..getA()
    ..getC()
    ..getD();
}
