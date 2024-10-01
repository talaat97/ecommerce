import '../../../../core/class/curd.dart';
import '../../../../link_api.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(Applink.homeLink, {});
    // print('============================= ${response}');
    return response.fold((l) => l, (r) => r);
  }
}
