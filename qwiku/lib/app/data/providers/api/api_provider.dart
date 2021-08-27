import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:qwiku/app/data/services/user/user_service.dart';
import 'package:qwiku/app/data/classes/user_model.dart';

const baseUrl = 'http://10.0.2.2:8080/api';
// const baseUrl = 'http://localhost:8080/api'; --> IOS

class ApiProvider {
  // final http.Client httpClient;
  //
  // ApiProvider({required this.httpClient});

  UserService userService = UserService();

  static const Map<String, String> _defaultHeaders = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
  };

  Future<dynamic> getHeaders() async {
    try {
      var token = await userService.getToken();
      if (token != null) {
        Map<String, String> _authHeaders = {
          'Authorization': '$token',
        };
        _defaultHeaders.addAll(_authHeaders);
      } else {
        print('Error with getHeaders()');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<dynamic> getUser() async {
    const url = '$baseUrl/users';

    try {
      var headers = await getHeaders();
      var response = await http.get(
        Uri.parse(url),
        headers: headers,
      );

      if (response.statusCode == 200) {
        print('getUser() request was successful!');
        var data = jsonDecode(response.body);
        return data;
      } else {
        print('There was an error when running getUser()');
        print('STATUS CODE:\n${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<Users?> authenticateUser(String email, String password) async {
    const url = '$baseUrl/users/authenticate';
    const headers = _defaultHeaders;
    var body = jsonEncode({'email': '$email', 'password': '$password'});

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );
      print('at authenticateUser() in api_provider');

      if (response.statusCode == 200) {
        var data = Users.fromJson(jsonDecode(response.body));
        print('response was good, return data!');
        print(data);
        return data;
      } else {
        print('There was an error running authenticateUser()');
        print('STATUS CODE:\n${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  // Future<List<User>?> getAll() async {
  //   try {
  //     final response = await httpClient.get(Uri.parse(baseUrl));
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  //       return jsonResponse['data']
  //           .map((json) => User.fromJson(json))
  //           .toList();
  //     } else {
  //       print('Error -getAll');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future getId(id) async {
  //   try {
  //     final response = await httpClient.get(baseUrl);
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -getId');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future add(obj) async {
  //   try {
  //     final response = await httpClient.post(baseUrl,
  //         headers: _defaultHeaders, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -add');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future edit(obj) async {
  //   try {
  //     final response = await httpClient.put(baseUrl,
  //         headers: _defaultHeaders, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -edit');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future delete(obj) async {
  //   try {
  //     final response = await httpClient.delete(baseUrl);
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -delete');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
}
