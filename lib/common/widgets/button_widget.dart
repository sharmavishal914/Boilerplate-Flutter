import 'package:flutter/material.dart';
import 'package:flutterboilerplate/common/constants/color_constant.dart';

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
      textColor: ColorConstant.BUTTON_ENABLED_TEXT_COLOR,
      disabledTextColor: ColorConstant.BUTTON_DISABLED_TEXT_COLOR,
      color: ColorConstant.BUTTON_ENABLED_COLOR,
      disabledColor: ColorConstant.BUTTON_DISABLED_COLOR,
      onPressed: onPress,
      child: Text(title),
    );
  }
}
