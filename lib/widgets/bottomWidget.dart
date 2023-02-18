import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool? value = false;
  String? payment_option;
  final Controller _c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 125,
      child: Column(children: [
        Row(
          children: [
            Text('Total: '),
            Obx(() => Text(_c.get_total().toString())),
            Checkbox(
              value: this.value,
              onChanged: (newvalue) {
                setState(() {
                  value = newvalue;
                });
              },
            ),
            Text('Loren Ispum')
          ],
        ),
        Row(
          children: [
            Container(
              width: screenwidth / 4,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('Loren ipsum')),
            ),
            Container(
              width: screenwidth / 4,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('Loren ipsum')),
            ),
            Container(
              width: screenwidth * 0.3,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Center(
                  child: Text(
                'Loren ipsum',
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        )
      ]),
    );
  }
}
