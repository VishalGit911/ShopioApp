import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shoppio_app/route/project_route.dart';
import 'package:shoppio_app/screen/forget/component/forgate_comman.dart';
import 'package:shoppio_app/utils/regex.dart';

class ForgateScreen extends StatefulWidget {
  const ForgateScreen({super.key});

  @override
  State<ForgateScreen> createState() => _ForgateScreenState();
}

class _ForgateScreenState extends State<ForgateScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conformcontroller = TextEditingController();

  final globalkey = GlobalKey<FormState>();

  bool obscure = true;
  bool obscure1 = true;
  String? email, password;
  String conformpass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Form(
            key: globalkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Image.asset(
                    "assets/images/forgate.png",
                    height: 350,
                    width: 350,
                  ),
                ),
                Text(
                  "Forgot password",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800),
                ),
                Form(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                forgatecomman(
                    obscureText: false,
                    controller: emailcontroller,
                    errorText: email,
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email)),
                passwordformfild(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(obscure
                            ? Icons.visibility
                            : Icons.visibility_off))),
                conformpassword(
                    labelText: "Conform Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure1 = !obscure1;
                          });
                        },
                        icon: Icon(obscure1
                            ? Icons.visibility
                            : Icons.visibility_off))),
                SizedBox(
                  height: 15,
                ),
                changepassword()
              ],
            ),
          ),
        ),
      ),
    );
  }

  changepassword() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade800,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            setState(() {
              removeerror();
              String email1 = emailcontroller.text.toString();
              String password1 = passwordcontroller.text.toString();

              if (!RegSignin.emailChek(email1)) {
                email = "Please Enter Valid Email";
              }
              if (!RegSignin.passwordChek(password1)) {
                password = "Please Enter Valid Password";
              }
              if (globalkey.currentState!.validate()) {
                Navigator.pushNamed(context, AppRoute.signin);
              } else {
                Fluttertoast.showToast(
                    msg: "Enter Valid Details",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    fontSize: 16.0,
                    backgroundColor: Colors.black);
              }
            });
          },
          child: Text("Change Password")),
    );
  }

  removeerror() {
    setState(() {
      email = null;
      password = null;
    });
  }

  passwordformfild({
    required labelText,
    required suffixIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: obscure,
        // onSaved: (newValue) {
        //   setState(() {
        //     password = newValue!;
        //   });
        // },
        controller: passwordcontroller,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return "Please Valid Password";
        //   }
        // },
        decoration: InputDecoration(
            errorText: password,
            labelText: labelText,
            suffixIcon: suffixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  conformpassword({
    required labelText,
    required suffixIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (newValue) {
          setState(() {
            conformpass = newValue!;
          });
        },
        controller: conformcontroller,
        validator: (value) {
          if (value == null ||
              value.isEmpty ||
              conformcontroller.text.toString() !=
                  passwordcontroller.text.toString()) {
            return "Not Match Password";
          }
        },
        decoration: InputDecoration(
            labelText: labelText,
            suffixIcon: suffixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
