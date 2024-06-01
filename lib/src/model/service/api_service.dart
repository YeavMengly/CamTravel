// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   final String baseUrl = "http://localhost:8000/api";

//   Future<Map<String, dynamic>> register(String name,String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/auth/register'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'name': name,
//         'email': email,
//         'password': password,
//       }),
//     );

//     return _handleResponse(response);
//   }

//   Future<Map<String, dynamic>> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/auth/login'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'email': email,
//         'password': password,
//       }),
//     );

//     return _handleResponse(response);
//   }

//   Map<String, dynamic> _handleResponse(http.Response response) {
//     final Map<String, dynamic> responseData = json.decode(response.body);
//     if (response.statusCode == 200) {
//       return responseData;
//     } else {
//       throw Exception(responseData['message']);
//     }
//   }
// }
