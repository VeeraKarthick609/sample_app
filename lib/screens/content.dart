import 'package:demo/widgets/foodCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List foods = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);

    setState(() {
      foods = data["items"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Wrap(
        children: <Widget>[
          for (var item in foods)
            FoodCard(
              image_url: item["img_url"],
              name: item['name'],
              price: item['price'],
            ),
        ],
      ),
    );
  }
}
