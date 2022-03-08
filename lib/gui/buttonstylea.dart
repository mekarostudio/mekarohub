import 'package:flutter/material.dart';

class ButtonStyleA extends StatelessWidget {
  final double width;
  final String text;
  final double marginTop;
  final void Function()? onPressed;

  const ButtonStyleA({
    Key? key,
    this.onPressed,
    this.width = double.infinity,
    this.marginTop = 25.0,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // GRADIENT COLOR
          colors: <Color>[
            Theme.of(context).primaryColorDark,
            Theme.of(context).primaryColor
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(10, 10),
            blurRadius: 20,
            spreadRadius: -12,
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
            borderRadius: BorderRadius.circular(100.0),
            splashColor: Colors.white24,
            onTap: onPressed,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.button,
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
