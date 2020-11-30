/***
 * minxins 混入 
 * 可以使用minxins实现多继承
 * 2.x 的minxins (版本不同 有变化)
 *   1 作为ninxins 的类内能继承Object 不能继承其他类
 *   2 作为minxins的类 不能有构造函数
 *   3 一个类可以minxins多个minxin类
 *   4 minxins不是继承/不是借口 是一个特效
 * **/
abstract class Person {
  int age;
  Person(this.age);
  void printData() {
    print('继承的方法${this.age}');
  }
}

abstract class A {
  String name;
  add();
  info() {
    print('minxins方法');
  }
}

abstract class B {
  remove();
}

class C extends Person with A, B {
  C(int age) : super(age);
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  C c = new C(18);
  c.info();
  c.printData();
}
