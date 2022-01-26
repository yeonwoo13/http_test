import 'package:http/http.dart' as http; //별명

void main() async {
  Future<http.Response> resFuture = http.post(Uri.parse("https://gall.dcinside.com/"));
  resFuture.then((value) {
    //value의 자료형은 http.Response
    http.Response res = value;
    print('Response status: ${res.statusCode}'); //2xx.... 성공
    print('Response body: ${res.body}'); //글자, DHTML code , 이 글자를 해석해서 보여주는 애가 브라우저.
  });

  print("다른 작업할래.");
}