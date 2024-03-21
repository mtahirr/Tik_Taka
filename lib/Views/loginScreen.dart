import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';
import 'package:tik_taka/Views/dashboard.dart';

import '../widgets/button.dart';
import '../widgets/passwordTextField.dart';
import '../widgets/testField.dart';
import 'Dashboard/bottomNavigation.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController password = TextEditingController();

  bool showLogin = true;

  bool showRegister = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.grey.shade100,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: white,
              border: Border(
                right: BorderSide(
                  color: Colors.black, // Adjust the color as needed
                  width: 1.0,
                  // Adjust the width as needed
                ),
                top: BorderSide(
                  color: Colors.black, // Adjust the color as needed
                  width: 1.0,
                  // Adjust the width as needed
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      showLogin = !showLogin;
                      showRegister = false;
                    });
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Login',
                        style:
                            GoogleFonts.righteous(fontSize: 16, color: primary),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      if (showLogin)
                        Container(
                          width: 30,
                          height: 5,
                          decoration: BoxDecoration(
                              color: yellow,
                              borderRadius: BorderRadius.circular(10)),
                        )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      showRegister = !showRegister;
                      showLogin = false;
                    });
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Register',
                        style:
                            GoogleFonts.righteous(fontSize: 16, color: primary),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      if (showRegister)
                        Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                              color: yellow,
                              borderRadius: BorderRadius.circular(10)),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: showLogin
          ? Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Mytextfield(
                        title: 'Phone number',
                        controller: name,
                        icon: Icons.local_phone,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyPasswordField(
                        title: 'Password',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Forgot your Password?',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MyButton(
                        name: 'Log In',
                        color: primary,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CustomNavigator()));
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Mytextfield(
                        title: 'Name',
                        controller: name,
                        icon: Icons.person,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Mytextfield(
                        title: 'Phone number',
                        controller: name,
                        icon: Icons.local_phone,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyPasswordField(
                        title: 'Password',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyPasswordField(
                        title: 'Re-enter the password',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MyButton(
                        name: 'Register',
                        color: primary,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CustomNavigator()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
