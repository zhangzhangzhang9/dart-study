import 'dart:io';
import 'dart:convert';

void main() async {
  var result = await _request();
  print(result);
}

_request() async {
  var httpClint = new HttpClient();
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  var request = await httpClint.getUrl(uri);
  var response = await request.close();
  return await response.transform(utf8.decoder).join();
}
