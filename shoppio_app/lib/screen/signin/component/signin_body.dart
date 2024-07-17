import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:shoppio_app/screen/signin/component/signin_commanform.dart';

import '../../../route/project_route.dart';
import '../../../utils/regex.dart';

class SigninBody extends StatefulWidget {
  const SigninBody({super.key});

  @override
  State<SigninBody> createState() => _SigninBodyState();
}

class _SigninBodyState extends State<SigninBody> {
  String? email, password;
  bool status = true;

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Image.asset(
                  "assets/images/signin.png",
                  height: 350,
                  width: 350,
                ),
              ),
              Text(
                "SIGN-IN",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter Your Email and Password",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              signinFormFild(
                  obscureText: false,
                  controller: emailcontroller,
                  errorText: email,
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.blue.shade800,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              signinFormFild(
                  controller: passwordcontroller,
                  errorText: password,
                  obscureText: status,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        status = !status;
                      });
                    },
                    icon: Icon(
                      status ? Icons.visibility : Icons.visibility_off,
                      color: Colors.blue.shade800,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.forgate);
                      },
                      child: Text("Forgot Password ?")),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String email1 = emailcontroller.text.toString();
                    String password1 = passwordcontroller.text.toString();
                    reseterror();
                    if (!RegSignin.emailChek(email1)) {
                      email = "Enter Valid Email";
                      Fluttertoast.showToast(
                          msg: "Enter Valid Email",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          backgroundColor: Colors.black);
                    }
                    if (!RegSignin.passwordChek(password1)) {
                      password = "Enter valid password";

                      Fluttertoast.showToast(
                          msg: "Enter Valid Password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          backgroundColor: Colors.black);
                    } else {
                      Navigator.pushNamed(context, AppRoute.home);
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    fixedSize: const Size(380, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    foregroundColor: Colors.white),
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?  ",
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.signup);
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void reseterror() {
    setState(() {
      email = null;
      password = null;
    });
  }
}
