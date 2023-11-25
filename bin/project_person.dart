import 'model/data_person.dart';
import 'service/network_service.dart';

void main() async {

  print("\x1B[1m\x1B[32mWelcome To Dart\x1B[0m\x1B[0m");

  String data = await NetworkService.getData(NetworkService.api);

  List<Person> listData = personListFromJson(data);

  for (int i = 0; i < listData.length; i++) {
    print("\n\x1B[1m\x1B[34mPerson ${i + 1}\x1B[0m\x1B[0m\n");

    print("Zip Code: ${listData[i].address.zipCode}");

    // print(listData[i]);
  }

}
