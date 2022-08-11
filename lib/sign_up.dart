import 'package:flutter/material.dart';
import 'package:login_ui/log_in.dart';
import 'constants.dart';
import 'text_field.dart';

class SignUp extends StatelessWidget {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign up",
              style: style_2,
            ),
            withGoogle("Sign up with Google"),
            Divider(
              height: 10,
            ),
            Text(
              "Name",
              style: style_3,
            ),
            MyTextField(hintText: "Leslie Alexander"),
            Text(
              "Email",
              style: style_3,
            ),
            MyTextField(hintText: "example@mail.com"),
            Text(
              "Password",
              style: style_3,
            ),
            MyPasswordField(hintText: "at least 8 characters"),
            newButton("Sign up"),
            Divider(
              height: 10,
            ),
            Center(
                child: Text(
              "Already have an account?",
              style: style_1,
            )),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
                    ),
                  );
                },
                child: Text("Log in", style: style_4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
