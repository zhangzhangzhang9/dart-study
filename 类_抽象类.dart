/****
 * dart 抽象类主要用于定义标准 子类可以继承抽象类,也可以时实现抽象类接口
 * 1 抽象类通过 abstract 关键字来定义
 * 2 Dart中的抽象方法不能用1 abstract声明,Dart中没有方法体的方法 称为抽象方法
 * 3 子类继承抽象类 必须实现里面的抽象方法
 * 4 如果吧抽象类当做接口实现的话 必须得实现抽象类里面定义的所有属性和方法
 * 5 抽象类不能被实例化 只有继承它的子类可以
 * extends 继承抽象类 和 implements的区别:
 *   1 要复用抽象类里面的方法: 并且要用抽象方法约束自己的话 使用 extends继承抽象类
 *   2 要把抽象类当做标准的话 就使用implements实现抽象类
 * **/

abstract class Animal {
  eat(); // 抽象方法
  run();
}

class Dog extends Animal {
  @override
  eat() {
    print('必须继承抽象类方法,抽象方法有多个 必须全部实现');
  }

  @override
  run() {}
}

class Cat extends Animal {
  @override
  eat() {
    print('必须继承抽象类方法,抽象方法有多个 必须全部实现');
  }

  @override
  run() {}
}

void main() {
  Animal a = new Dog();
  a.eat();
}
