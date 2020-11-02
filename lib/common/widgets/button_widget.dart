import 'package:flutter/material.dart';

//  Usage

//  ButtonWidget(
//      onPress: () {},
//      title: AppLocalizations.of(context).translate('login'),
//  )

class ButtonWidget extends StatelessWidget {
  final String title;
  final double width;
  final Function onPress;

  const ButtonWidget({
    Key key,
    @required this.title,
    this.width,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? double.infinity,
      padding: const EdgeInsets.all(10),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: onPress,
      child: Text(title),
    );
  }
}
