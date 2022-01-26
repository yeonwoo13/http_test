import 'package:http/http.dart' as http; //별명

void main() async {
  http.Response response = await http.get(Uri.parse('https://gall.dcinside.com/board/view/?id=d_fighter_new2&no=1550063&page=1'));
  print('Response status: ${response.statusCode}'); //2xx.... 성공
  print('Response body: ${response.body}'); //글자, DHTML code , 이 글자를 해석해서 보여주는 애가 브라우저.
}