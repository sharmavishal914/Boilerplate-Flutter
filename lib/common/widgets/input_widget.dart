import 'package:flutter/material.dart';
import 'package:flutterboilerplate/common/constants/constants.dart';

class InputWidget extends StatelessWidget {
  final String hint;
  final TextInputType textInputType;
  final int maxLength;
  final ValueChanged<String> onChanged;
  final bool autoFocus;
  final TextEditingController textEditingController;
  final double rightPaddingForCrossButton;

  const InputWidget({
    Key key,
    this.hint,
    this.textInputType,
    this.maxLength,
    this.onChanged,
    this.autoFocus,
    this.textEditingController,
    this.rightPaddingForCrossButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstant.WHITE,
        boxShadow: [
          BoxShadow(color: ColorConstant.BLUE, spreadRadius: 1),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0 +
                (rightPaddingForCrossButton == null
                    ? 0.0
                    : rightPaddingForCrossButton),
            top: 5.0,
            bottom: 5.0),
        child: TextField(
            controller: textEditingController,
            autofocus: autoFocus != null && autoFocus,
            onChanged: onChanged,
            maxLength: maxLength == null ? null : maxLength,
            keyboardType:
                textInputType == null ? TextInputType.text : textInputType,
            cursorColor: ColorConstant.BLUE,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              counterText: "",
            ),
            style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
