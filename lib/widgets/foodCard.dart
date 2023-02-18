import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller.dart';

class FoodCard extends StatelessWidget {
  final String? image_url;
  final double? price;
  final String? name;
  FoodCard(
      {super.key,
      required this.image_url,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    final Controller _c = Get.put(Controller());
    return GestureDetector(
      onTap: () {
        _c.add(name, price);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: screenwidth / 2.25,
        height: screenwidth / 2.25,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Column(children: [
          Container(
              margin: EdgeInsets.all(8),
              height: screenwidth / 5,
              child: Image.network(image_url.toString())),
          Text(
            '$name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    Text('Qty: '),
                    Obx(() => Text(_c.get_qty(name).toString()))
                  ],
                )),
                Container(
                    child: Row(
                  children: [Text('Price: '), Text(price.toString())],
                )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
