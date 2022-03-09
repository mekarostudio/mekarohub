import 'package:flutter/material.dart';

import '../section/header.dart';

class BaseScreen extends StatelessWidget {
  // Header Info
  final double headerHeight;
  final Color headerBackgroundColor;
  final Widget? headerTitle;
  final bool extendBodyBehindAppBar;
  final Color headerIconColor;

  // Body
  final Widget body;

  // Background
  final Gradient? backgroundGradient;

  const BaseScreen({
    Key? key,
    this.backgroundGradient,
    this.headerTitle,
    this.headerHeight = 60.0,
    this.extendBodyBehindAppBar = false,
    this.headerBackgroundColor = Colors.transparent,
    this.headerIconColor = Colors.black,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: (backgroundGradient != null)
            ? Colors.transparent
            : Theme.of(context).scaffoldBackgroundColor,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(headerHeight),
          child: Header(
            title: headerTitle,
            iconColor: headerIconColor,
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
      ),
    );
  }
}
