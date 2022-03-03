import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: <Widget>[
        Container(
          child: Text('salom'),
        ),
        Container(
          child: Text('salom'),
        ),
      ],
    );
  }
}
