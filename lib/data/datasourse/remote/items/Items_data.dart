import '../../../../core/class/curd.dart';
import '../../../../link_api.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);

  getData(String catName) async {
    var response = await crud.postData(Applink.itmesLink, {
      'name': catName,
    });
    // print('============================= ${response}');
    return response.fold((l) => l, (r) => r);
  }
}
