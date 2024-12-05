import 'package:http/http.dart' as http;
import 'dart:convert';

final String _token = '16504|UKjgztMXvYGlDQ0i6WLp25rbshZQDsfz';

Future<Map> convertePorExtenso(String? _valor) async {
  http.Response response;
  response = await http.get(Uri.parse(
      "https://api.invertexto.com/v1/number-towords?token=$_token&number=$_valor&language=pt&currency=BRL"));
  return json.decode(response.body);
}

Future<Map> buscaCEP(String? _valor) async {
  http.Response response;
  response = await http.get(
      Uri.parse("https://api.invertexto.com/v1/cep/$_valor?token=$_token "));
  return json.decode(response.body);
}

Future<Map> validadorEmail(String? _valor) async {
  http.Response response;
  response = await http.get(Uri.parse(
      "https://api.invertexto.com/v1/email-validator/$_valor?token=$_token"));
  return json.decode(response.body);
}
