import 'package:dio/dio.dart';
import 'package:justice/core/models/serverResponse.dart';

class Server {
  final String _address = "http://185.106.208.70";

  Future get(String address,  {String token, Map<String, dynamic> body}) async {
    var url = this._address + address;
    var dio = Dio();
    if (token != null) dio.options.headers["token"] = token;
    var response;
    try {
      response = (await dio.get(url, queryParameters: body)).data;
    } catch (e) {
      response = null;
    }
    return ServerResponse(response);
  }

  Future post(String address, {String token, Map<String, dynamic> body}) async {
    var url = this._address + address;
    var dio = Dio();
    FormData formData = new FormData.fromMap(body);
    if (token != null) dio.options.headers["token"] = token;
    var response;
    try {
      response = (await dio.post(url, data: formData)).data;
    } catch (e) {
      response = null;
    }
    return ServerResponse(response);
  }
}
