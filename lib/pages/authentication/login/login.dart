import 'package:flutter/material.dart';
import 'package:flutterboilerplate/app/app_localizations.dart';
import 'package:flutterboilerplate/common/constants/constants.dart';
import 'package:flutterboilerplate/common/widgets/widgets.dart';
import 'package:load/load.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate('login')),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                ImageConstant.IMAGE_APP_ICON,
                height: 200,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    InputWidget(
                      hint: AppLocalizations.of(context).translate('login'),
                    ),
                    const SizedBox(height: 20),
                    InputWidget(
                      obscureText: true,
                      hint: AppLocalizations.of(context).translate('password'),
                    ),
                    const SizedBox(height: 30),
                    ButtonWidget(
                      onPress: loginHandler,
                      title: AppLocalizations.of(context).translate('login'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void loginHandler() {
    showLoadingDialog();
    Future.delayed(Duration(seconds: 5), () {
      hideLoadingDialog();
    });
  }
}
