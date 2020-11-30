/***
 * dart 库主要有三种
 * 1 自定义库 import 'lib/xxx'
 * 2 系统内置库 import 'dart:io'
 * 3 Pub包管理系统中的库 
 *   https://pub.dev/packages
 *   1.在项目新建 pubspec.yaml
 *   2.在pubspec.yaml文件 配置项目名称.描述.依赖等信息
 *   3.运行 pub get 获取包下载至本地
 *   4.项目中引入库 impirt 'package:http/http.dart' as http; 看文档使用
 * **/
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
