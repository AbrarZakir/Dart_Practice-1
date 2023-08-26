class MyClass {
  int myVar;
  MyClass(this.myVar);
  static int myStaticVar = 42;
  static void myStaticMethod() {
  print("Hello from the static method!");
  }
  }
  void main() {
  print(MyClass.myStaticVar);
  MyClass.myStaticMethod();
  }


