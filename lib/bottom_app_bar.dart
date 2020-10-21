import 'package:flutter/material.dart';
import 'constants.dart';

class MyBottomAppBar extends StatelessWidget {
  MyBottomAppBar({@required this.onTap, @required this.bottomText});
  final Function onTap;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(bottomText, style: kBottomTExtStyle),
        )),
        decoration: BoxDecoration(
          color: kBottomAppBarColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: kBottomAppBarHeight,
      ),
    );
  }
}
