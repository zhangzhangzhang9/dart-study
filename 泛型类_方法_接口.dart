/***
 * 泛型是解决类 接口 方法的复用性 以及对不特定类型的支持(类型校验)
 * T 
 * **/
T getData<T>(T value) {
  return value;
}

void main() {
  getData<String>('Ces1');
  getData<int>(12);
}
