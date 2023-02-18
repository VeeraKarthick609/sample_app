import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final double screenwidth;
  SearchBar({super.key, required this.screenwidth});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          decoration: BoxDecoration(border: Border.all()),
          height: 40,
          width: widget.screenwidth * 0.5,
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 20),
                  prefixIconColor: Colors.grey,
                  border: InputBorder.none,
                  hintText: 'Search')),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(3),
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: Text(
                  'Loren ipsum',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                ),
              )),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(3),
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: Text(
                  'Loren ipsum',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(border: Border.all()),
          child: IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}
