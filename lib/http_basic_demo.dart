import 'package:http/http.dart' as http;

void main() async{
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  print('status = ${response.statusCode}');
  print('response = ${response.body}');
}