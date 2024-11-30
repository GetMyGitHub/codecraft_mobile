import 'package:codecraft_mobile/service/core/service_core.dart';

class BaseService extends CoreService {

  login(String username, String password) async {
    var test = await apiProviderService.doPost({'username': username, 'password': password});
    return test;
  }

  test() async {
    var test = await apiProviderService.doGet('/ws/meta/models');
    return test;
  }


}