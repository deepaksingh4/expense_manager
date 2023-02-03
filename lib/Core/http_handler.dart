import 'package:dio/dio.dart';
import 'dart:convert' as converter;
import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';
import 'package:flutter/foundation.dart';


class APIResponse {
  dynamic? body;
  Error? error;
  APIResponse({this.body, this.error});
}


class HttpHandler {

  performGet({required String path, success = (APIResponse), failure = (dynamic)}) async {
      try{
        var response = await Dio().get(path);
        if (response.statusCode == 200){
          print("®");
          var jsonRes = APIResponse(body: response.data);
           success(jsonRes);
        }else{
           failure(APIResponse(error: Error()));
        }
      }catch(error){
        failure(APIResponse(error: FallThroughError()));
      }
  }
}