import 'package:codecraft_mobile/service/service_api_provider.dart';

class BaseService {

  ApiProviderService apiProviderService = ApiProviderService();

  login(String username, String password) async {
    var test = await apiProviderService.doPost({'username': username, 'password': password});
    return test;
  }

  test() async {
    var test = await apiProviderService.doGet('/ws/meta/models');
    return test;
  }


}