import 'package:dio/dio.dart';
import 'dart:convert' as converter;
import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';
import 'package:flutter/foundation.dart';

class APIResponse {
  dynamic? body;
  Error? error;

  APIResponse({this.body, this.error});
}

class DioClient {
  final Dio dio = Dio();

  performGet(
      {required String path,
      Map<String, String> queryParams = const {},
      success = (Future<APIResponse>),
      failure = (dynamic)}) async {
    try {
      var response = await dio.get(path, queryParameters: queryParams);
      if (response.statusCode == 200) {
        var jsonRes = APIResponse(body: response.data);
        success(jsonRes);
      } else {
        failure(APIResponse(error: Error()));
      }
    } catch (error) {
      failure(APIResponse(error: FallThroughError()));
    }
  }
}
