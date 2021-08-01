import 'package:flutter/material.dart';

class rowdata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("ONLINE"),
        FlatButton(
          onPressed: () {},
          child: Text("+ Add Contact"),
        ),
      ],
    );
  }
}
