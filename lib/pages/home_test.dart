import 'package:codecraft_mobile/services/base/service_base.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void test1() async {
    BaseService baseService = BaseService();
    var login = await baseService.login("admin", "admin");
    var test = await baseService.test();
  }

  @override
  void initState() {
    super.initState();
    // test1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CodeCraft"),
      ),
    );
  }
}
