import 'package:flutter/material.dart';

class DividerOfEtiquette extends StatelessWidget {
  const DividerOfEtiquette({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 3, 25, 0),
      child: Container(
        height: 2,
        width: 404,
        decoration: const BoxDecoration(color: Color(-11568871)),
      ),
    );
  }
}
