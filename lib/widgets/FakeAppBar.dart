import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FakeAppBar extends StatelessWidget {
  const FakeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.keyboard_arrow_left),
      ],
    );
  }
}