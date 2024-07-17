import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../route/project_route.dart';
import '../../../utils/regex.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController datecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conformpassword = TextEditingController();

  bool pass = true;
  bool pass1 = true;
  String gender = "male";
  String name = "", surname = "", contact = "", usertype = "";

  final globalkey = GlobalKey<FormState>();
  String? email, password;
  String conformpas = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Form(
            key: globalkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: Image.asset(
                    "assets/images/signup.png",
                    height: 300,
                    width: 300,
                  ),
                ),
                Text(
                  "Register Your Account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Complete Your Details or Continue With Social Media",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
                nameFormFild(),
                signupformfild(
                    labelText: "Email",
                    suffixIcon: const Icon(Icons.email),
                    obscureText: false,
                    controller: emailcontroller,
                    errorText: email),
                contactFormFild(),
                genderFormFild(),
                usertypeFormFild(),
                dateOfBirth(),
                addressFormFild(),
                signupformfild(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                        icon: Icon(
                            pass ? Icons.visibility : Icons.visibility_off)),
                    obscureText: pass,
                    controller: passwordcontroller,
                    labelText: "Password",
                    errorText: password),
                conformpasswordFormFild(),
                registerbutton(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  nameFormFild() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Name';
                }
                return null;
              },
              onSaved: (newValue) {
                name = newValue!;
              },
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.edit),
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Surname';
                }
                return null;
              },
              onSaved: (newValue) {
                surname = newValue!;
              },
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.edit),
                  labelText: "SurName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        )
      ],
    );
  }

  contactFormFild() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty || value.length != 10) {
            return 'Invalid Contact';
          }
          return null;
        },
        onSaved: (newValue) {
          contact = newValue!;
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.call),
            labelText: "Contact",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }

  genderFormFild() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const Text(
              "Gender :",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Radio(
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            const Text(
              "male",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            Radio(
              focusColor: Colors.blue.shade800,
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            const Text(
              "female",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            Radio(
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            const Text(
              "other",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  usertypeFormFild() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Invalid type';
          }
          return null;
        },
        onSaved: (newValue) {
          usertype = newValue!;
        },
        decoration: InputDecoration(
            labelText: "User Type",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        items: const [
          DropdownMenuItem(
            value: "Student",
            child: Text("Student"),
          ),
          DropdownMenuItem(
            value: "SalseManger",
            child: Text("SalseManger"),
          ),
          DropdownMenuItem(
            value: "ShopKiper",
            child: Text("ShopKiper"),
          ),
          DropdownMenuItem(
            value: "BusinesMan",
            child: Text("BusinesMan"),
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }

  dateOfBirth() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Invalid  Date';
          }
          return null;
        },
        onSaved: (newValue) {},
        controller: datecontroller,
        readOnly: true,
        onTap: () async {
          DateTime? pickeDate = await showDatePicker(
            context: context,
            firstDate: DateTime(2005),
            lastDate: DateTime(2050),
            initialDate: DateTime.now(),
          );
          if (pickeDate != null) {
            String formattedDate =
                '''${pickeDate.day}/${pickeDate.month}/${pickeDate.year}''';
            setState(() {
              datecontroller.text = formattedDate.toString();
            });
          }
        },
        decoration: InputDecoration(
          labelText: "Date Of Birth",
          suffixIcon: const Icon(Icons.calendar_month),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  addressFormFild() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLines: 3,
        decoration: InputDecoration(
            labelText: "Address",
            suffixIcon: const Icon(Icons.location_on),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  conformpasswordFormFild() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: conformpassword,
        obscureText: pass1,
        onSaved: (newValue) {
          conformpas = newValue!;
        },
        validator: (value) {
          if (value == null ||
              value.isEmpty ||
              conformpassword.text.toString() !=
                  passwordcontroller.text.toString()) {
            return 'Not Match Password';
          }
          return null;
        },
        // onSaved: (newValue) {
        //   conpassword = newValue!;
        // },
        decoration: InputDecoration(
            labelText: "Conform Password",
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    pass1 = !pass1;
                  });
                },
                icon: Icon(pass1 ? Icons.visibility : Icons.visibility_off)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }

  registerbutton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(400, 50),
              backgroundColor: Colors.blue.shade800,
              foregroundColor: Colors.white),
          onPressed: () {
            setState(() {
              reseterror();
              String email1 = emailcontroller.text.toString();
              String password1 = passwordcontroller.text.toString();

              if (!RegSignin.emailChek(email1)) {
                email = "Enter Valid Email";
              }
              if (!RegSignin.passwordChek(password1)) {
                password =
                    "Use In First letter Capit al & Special character & number";
              }
              if (globalkey.currentState!.validate()) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoute.home,
                  (route) => false,
                );
              } else {
                Fluttertoast.showToast(
                    msg: "Please Enter Empty Field",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    fontSize: 16.0,
                    backgroundColor: Colors.black);
              }
            });
          },
          child: const Text("Register Account")),
    );
  }

  void reseterror() {
    setState(() {
      email = null;
      password = null;
    });
  }
}

Widget signupformfild(
    {required Widget suffixIcon,
    required bool obscureText,
    required controller,
    required labelText,
    required String? errorText}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon: suffixIcon,
      ),
    ),
  );
}
