import 'package:flutter/material.dart';

import '../widgets/bottomWidget.dart';
import '../widgets/searchBar.dart';
import 'content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: BottomBar(),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
        ],
        leading: Icon(Icons.arrow_back),
        toolbarHeight: 70,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Items',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Loren ipsum',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SearchBar(
            screenwidth: screenwidth,
          ),
          Content(),
          SizedBox(
            height: 150,
          )
        ]),
      ),
    );
  }
}
