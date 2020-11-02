import 'package:flutter/material.dart';
import 'package:flutterboilerplate/common/constants/color_constant.dart';

// Usage

// InputWidget(
//   obscureText: true,
//   hint: AppLocalizations.of(context).translate('password'),
// ),

class InputWidget extends StatelessWidget {
  final String hint;
  final bool obscureText;

  const InputWidget({
    Key key,
    this.hint,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: hint,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.INPUT_BORDER_COLOR),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.INPUT_SELECTED_BORDER_COLOR),
        ),
        border: UnderlineInputBorder(),
      ),
    );
  }
}
