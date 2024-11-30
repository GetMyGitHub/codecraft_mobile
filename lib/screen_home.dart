

import 'package:codecraft_mobile/service/base/service_base.dart';
import 'package:flutter/cupertino.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  void test1() async {

    BaseService baseService = BaseService();
    var login = await baseService.login("admin","admin");
    var test = await baseService.test();

  }

  @override
  void initState() {
    super.initState();
    test1();
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }


}
