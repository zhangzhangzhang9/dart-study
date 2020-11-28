void main() {
  // Maps类型 (字典)
  // 1 获取值不能用 . 操作符
  var person = {"name": '张三', "age": 15};
  print(person);
  print(person['name']);
  // new 类似构造函数
  var p = new Map();
  p["name"] = '李四';
}
