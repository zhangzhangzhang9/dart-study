// 面向对象 封装 继承 多态
// dart所有的东西都是对象 所有的对象都继承来自Object
// dart是一门使用类和单继承的面向对象语言 所有的对象都是类的实例 所有的类都是Object的子类
// 一个类 通常由属性和方法组成
// 自定义类 写在main方法外 类首字母大写 在main方法中调用实例
// 类的构造函数 就是类的名称方法 在实例化时自动执行 类似js中 constructors
// 私有属性 _开头 实例访问不到 可以通过内部方法间接访问
// 私有方法 _开头 实例访问不到 可以通过内部方法间接访问
// get data {}  访问 p.data 以属性方式访问 计算属性
// set data {}  访问 p.data 以属性方式访问 计算属性
// 在初始化实例之前 初始化实例变量
//     ClassName {
//      ClassName():width=10,height=20{}
//     }
// 静态属性/方法 static关键字来声明 直接被类调用 不能在实例化后调用
// 静态方法不能访问非静态成员 非静态方法可以访问静态成员 不需加this
class Person {
  String name = 'zhanzghangzhang';
  int age = 18;
  Person() {
    // 类的构造函数 在实例化时自动执行
    print('自执行');
  }
  // 简写默认 Person(this.name,this.age);
  // 命名构造函数 Person.now(this.name,this.ag);
  // 调用命名构造函数 Person p1 = new Person.now(name,age);
  void getName() {
    print("${this.name}--${this.age}");
  }
}

void main() {
  Person p1 = new Person();
  p1.getName();
}
