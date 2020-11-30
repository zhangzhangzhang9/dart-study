/***
 *  dart的接口没有interface关键字定义接口 普通可或者抽象类都可以作为接口被实现
 *  使用implements 关键字实现
 *  如果实现的类是普通类 会将普通类和抽象类中的属性和方法全部需要覆写一遍
 *  抽象类可以定义抽象方法 普通类不行 一般Dart实现接口 建议使用抽象类
 * **/

abstract class Db {
  // 当做接口 接口:约定 规范
  add();
  save();
  remove();
}

// 实现多个接口
abstract class A {
  String name;
  add();
}

abstract class B {
  remove();
}

class C implements A, B {
  @override
  String name;

  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  remove() {
    // TODO: implement remove
    throw UnimplementedError();
  }
}
