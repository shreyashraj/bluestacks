import 'package:flutter/material.dart';

import 'InputField.dart';
import 'Landing.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot Password",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {
              // print("$email , $pass");
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Landing()))
                  .then((value) {
                // setState(() {
                //   email = null;
                //   pass = null;
                // });
              });
            },
            color: Colors.greenAccent,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
