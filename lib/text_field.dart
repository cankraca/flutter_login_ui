import 'package:flutter/material.dart';
import 'constants.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  MyTextField({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(3),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

class MyPasswordField extends StatefulWidget {
  String hintText;
  MyPasswordField({required this.hintText});

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHiddenPassword,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isHiddenPassword = !isHiddenPassword;
            });
          },
          child: isHiddenPassword == true
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
        contentPadding: EdgeInsets.all(3),
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

Widget withGoogle(String txt) {
  return Center(
    child: Container(
      child: ListTile(
        onTap: () {},
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        title: Row(children: [
          Icon(Icons.g_mobiledata_rounded),
          Text(
            txt,
            style: style_1,
          )
        ]),
      ),
    ),
  );
}

Widget newButton(String txt) {
  return ListTile(
    onTap: () {},
    title: Center(
      child: Text(
        txt,
        style: TextStyle(color: Colors.white),
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    tileColor: Colors.blue,
  );
}
