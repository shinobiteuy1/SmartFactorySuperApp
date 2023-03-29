import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Request {
  final String url;
  final dynamic body;
  // final Map<String, String> header;

  Request(this.url, this.body);

  // dynamic restPost({String? token, String? accessToken}) async {
  //   var returnResponse = {};
  //   var headers = {
  //     'Content-Type': "application/json",
  //   };
  //   if (token != null) {
  //     headers['Authorization'] = "Bearer " + token;
  //   }
  //   if (accessToken != null) {
  //     headers['x-access-token'] = accessToken;
  //   }

  //   if (await Common.isNetworkAvailable()) {
  //     try {
  //       Response response = await http
  //           .post(Uri.parse(url), body: jsonEncode(body), headers: headers)
  //           .timeout(Duration(seconds: 10));
  //       returnResponse = {
  //         'status_code': response.statusCode,
  //         'response': response.body
  //       };
  //     } on Exception catch (e) {
  //       returnResponse = {
  //         'status_code': codeException,
  //         'response': e.toString()
  //       };
  //     }
  //   } else {
  //     returnResponse = {'status_code': codeInternet, 'response': null};
  //   }

  //   return returnResponse;
  // }

  dynamic restGet() async {
    var returnResponse = {};
    var headers = {
      'Content-Type': "application/json",
    };
      try {
        Response response = await http
            .get(Uri.parse(url), headers: headers)
            .timeout(Duration(seconds: 10));
        returnResponse = {
          'status_code': response.statusCode,
          'response': response.body
        };
      } on Exception catch (e) {
        returnResponse = {'status_code': 500, 'response': e};
      }

    return returnResponse;
  }

  dynamic restPostWithOutToken() async {
    var returnResponse = {};
    
    try {
      var headers = {'Content-Type': "application/json"};
      Response response = await http
          .post(Uri.parse(url), body: jsonEncode(body), headers: headers)
          .timeout(Duration(seconds: 5));
      returnResponse = {
        'status_code': response.statusCode,
        'response': response.body
      };
    } on Exception catch (e) {
      returnResponse = {
        'status_code': 500,
        'response': e.toString()
      };
    }

    return returnResponse;
  }
}
