import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget? title;
  final Color backgroundColor;
  final Color iconColor;

  const Header({
    Key? key,
    this.title,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Container(child: title),
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: iconColor, //change your color here
      ),
    );

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
        ),
        Positioned(
          child: Container(
            child: appbar,
          ),
        )
      ],
    );
  }
}
