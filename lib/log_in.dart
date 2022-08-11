import 'package:flutter/material.dart';
import 'constants.dart';
import 'text_field.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log in",
                style: style_2,
              ),
              withGoogle("Log in with Google"),
              Divider(
                height: 10,
              ),
              Text(
                "Email",
                style: style_3,
              ),
              MyTextField(hintText: "leslie@pixsellz.io"),
              Text(
                "Password",
                style: style_3,
              ),
              MyPasswordField(hintText: ""),
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      }),
                  Text(
                    "Remember me",
                    style: style_1,
                  ),
                ],
              ),
              newButton("Log in"),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text("Forgot Password?", style: style_4),
                ),
              ),
              Divider(
                height: 10,
              ),
              Center(
                  child: Text(
                "Don't have an account?",
                style: style_1,
              )),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Sign up", style: style_4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
