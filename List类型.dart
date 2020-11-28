void main() {
  // List (数组/集合) 下标0开始 取值和js相符
  // var li = ['a', 111, 'ccc'];
  // print(li);
  // print(li.length);
  // print(li[0]);
  // 类似js构造函数
  // var l2 = new List();
  // l2.add('张三');
  // l2.add('李四');
  // l2.add('王五');
  // print(l2);
  // 定义list 指定类型 ts泛型
  var l3 = new List<String>();
  l3.add('张三');
  l3.add('李四');
  l3.add('王五');
  // l3.add(123); //错误
  print(l3);
}
