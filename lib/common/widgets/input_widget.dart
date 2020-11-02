import 'package:flutter/material.dart';

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
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        border: UnderlineInputBorder(),
      ),
    );
  }
}
