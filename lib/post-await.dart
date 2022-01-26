import 'package:http/http.dart' as http; //별명

void main() async {
  Uri url = Uri.parse("https://gall.dcinside.com/");

  //Request....
  //body: 내가 들고갈 데이터

  //##Future
  //Future는 미리 받는다.
  //왜?? 기다리는동안 다른 작업을 하려고.

  //##await, async
  //await는 그냥 기다릴래. 다른 작업 못함.
  http.Response response = await http.post(url, body:{"a":"1"});
  print('Response status: ${response.statusCode}'); //2xx.... 성공
  print('Response body: ${response.body}'); //글자, DHTML code , 이 글자를 해석해서 보여주는 애가 브라우저.
}