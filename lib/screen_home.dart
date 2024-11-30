
import 'dart:developer';

import 'package:codecraft_mobile/service/service_api_provider.dart';
import 'package:codecraft_mobile/service/service_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  // final dio = Dio();
  // final cookieJar = CookieJar();


  void test1() async {
    // const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');
    // if(!kIsWeb) dio.interceptors.add(CookieManager(cookieJar));
    // var response = await dio.post('http://localhost:8080/codecraft/callback', data: {'username': 'admin', 'password': 'admin'});
    // var response1 = await dio.get('http://localhost:8080/codecraft/ws/meta/models');

    BaseService baseService = BaseService();
    var login = await baseService.login("admin","admin");
    var test = await baseService.test();


    // try {
    //   var login = await baseService.login("admin","admin");
    // } on DioException catch(e) {
    //   log(e.message.toString());
    // }


    // var metas = await apiProvider.doGet('/ws/meta/models');



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    test1();
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }


}
