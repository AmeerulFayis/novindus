import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../data/api/login_response.dart';
import '../util/app_url.dart';

class APIService{

  Future<LoginResponse?>login(String username,String password)async{
    try{
      var response=await http.Client().post(Uri.parse(AppUrls.baseUrl+AppUrls.loginUrl),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
          body: jsonEncode({
            "username":username,
            "password":password,
          }));


      log("API>>>URL>>${AppUrls.baseUrl}${AppUrls.loginUrl}<<<RES>>>${response.body}<<<REQ>>>${jsonEncode({
        "username": username,
        "password": password,
      })}");

      if (response.statusCode == 200) {
        log("code 200");
        return LoginResponse.fromJson(json.decode(response.body));
      } else if (response.statusCode == 201) {
        log("code 201");
        return LoginResponse.fromJson(json.decode(response.body));
      } else if (response.statusCode == 401) {
        log("code 401: Unauthorized");
        return LoginResponse(code: 401);
      } else {
        log("code 500");
        return LoginResponse(code: 500);
      }
    }catch(e){
      log("Error in API$e");
      if (e.toString().startsWith("SocketException") ||
          e.toString().startsWith("Failed host lookup")) {
        //no inter net case
        return LoginResponse(code: 503);
      } else {
        return LoginResponse(code: 500);
      }
    }
  }



}