import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget searchPage() {
  return Column(
    children: [
      CupertinoSearchTextField(),
      Container(
        child: foundSearch(),
      ),
    ],
  );
}

Widget foundSearch() {
  return SingleChildScrollView(
    child: Column(
      children: [
        cardview(),
        cardview(),
        cardview(),
      ]
    )
  );
}

Widget cardview() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(children: [
      Text(
        'username',
        style: TextStyle(fontSize: 20),
      ),
    ]),
  );
}
