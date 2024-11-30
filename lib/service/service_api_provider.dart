
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class ApiProviderService
{
  final Dio dio = Dio();
  final String baseUrl = "http://localhost:8080/codecraft";
  final String loginEndpoint = "/callback";
  final bool kIsWeb = const bool.fromEnvironment('dart.library.js_util');

  ApiProviderService(){
    dio.interceptors.add(CookieManager(CookieJar()));
  }

  doAction(var action) async {
    try {
      var callback = await action;
      return ResponseObject(true, "", callback);
    } on DioException catch (e) {
      return ResponseObject(false, e.message.toString(), null);
    }
  }

  doPost(Map<String, String> data) async {
    return doAction(
        dio.post('$baseUrl$loginEndpoint',data: data)
    );
  }

  doGet(String urlEndpoint) {
    return doAction(
        dio.get('$baseUrl$urlEndpoint')
    );
  }

}

class ResponseObject {

  late bool success;
  late String messageReturned;
  late Response<dynamic>? response;

  ResponseObject(this.success, this.messageReturned, this.response);


}

