import '../../../../core/class/curd.dart';
import '../../../../link_api.dart';

class VerfiyCodeCheckEmail {
  Crud crud;
  VerfiyCodeCheckEmail(this.crud);

  postData(String email, String verifyCode) async {
    var response = await crud.postData(Applink.verfiyCodeSignUp, {
      "email": email,
      "verifycode": verifyCode,
    });
    // print('============================= ${response}');
    return response.fold((l) => l, (r) => r);
  }
}
