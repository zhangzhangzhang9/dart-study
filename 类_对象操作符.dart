/****
 *  ? 条件运算符号
 *  as 类型转换
 *  is 类型判断
 *  .. 级联操作（连缀）
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * ****/

class Person {
  String name;
  Person(this.name);
  get getName {
    return print(this.name);
  }
}

void main() {
  // Person p; null
  // p.getName(); 报错
  // Person p;
  // p?.getName(); 无报错
  // Person p = new Person('张');
  // if (p is Person) {
  //   p.getName;
  // }
  // var p;
  // p = new Person('张');
  // (p as Person).getName;
  Person p = new Person('张');
  p
    ..name = 'zhangzhang'
    ..getName;
}
