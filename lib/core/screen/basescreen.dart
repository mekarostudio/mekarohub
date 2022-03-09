import 'package:flutter/material.dart';

import '../section/header.dart';

class BaseScreen extends StatelessWidget {
  // Header Info
  final double headerHeight;
  final Color headerBackgroundColor;
  final Widget? headerTitle;
  final bool extendBodyBehindAppBar;

  // Body
  final Widget body;

  const BaseScreen({
    Key? key,
    this.headerTitle,
    this.headerHeight = 60.0,
    this.extendBodyBehindAppBar = false,
    this.headerBackgroundColor = Colors.transparent,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(headerHeight),
        child: Header(
          title: headerTitle,
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            child: body,
          ),
        ],
      ),
    );
  }
}
