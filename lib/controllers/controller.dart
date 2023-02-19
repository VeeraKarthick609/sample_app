import 'package:get/get.dart';

class Controller extends GetxController {
  RxMap items = {}.obs;
  RxDouble total = 0.0.obs;
  RxInt quantity = 0.obs;
  void add(name, price) {
    if (items.containsKey(name)) {
      quantity = items[name][1]++;
      items[name] = [price, quantity];
    } else {
      RxInt qty = 1.obs;
      items[name] = [price, qty];
    }
  }

  dynamic get_qty(name) {
    if (items.isEmpty) {
      return 0;
    } else {
      print(items);
      List? item = items[name];
      return item?[1] ?? 0;
    }
  }

  dynamic get_total() {
    total = 0.0.obs;
    items.forEach((key, value) {
      var qty = items[key][1].value as int;
      var price = items[key][0];
      print((qty * price));
      total = total + (qty * price) as RxDouble;
    });

    return total;
  }
}
