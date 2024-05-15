import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  Widget login(String icon, double width) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: width),
          // Icon(icon, size: 24),
        ],
      ),
    );
  }

  Widget userInput(IconData Icons, String hintTitle, TextInputType keyboardType) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 55,
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Icon(
                Icons,
                color: Color(0xFFC5C8C9),
                size: 25,
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  autocorrect: false,
                  enableSuggestions: false,
                  autofocus: false,
                  decoration: InputDecoration.collapsed(
                    hintText: hintTitle,
                    hintStyle: TextStyle(fontSize: 14, color: const Color(0xFFC5C8C9)),
                  ),
                  keyboardType: keyboardType,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFF171919),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/logo.png',
                  width: 150,
                ),
              ),
            ),
            Container(
              height: 530,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF252525),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Welcome abroad!",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xFFF1F1F1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Please sign in to your account!",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFF1F1F1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    userInput(Icons.person, 'Email / Username', TextInputType.emailAddress),
                    userInput(Icons.lock_outlined, 'Password', TextInputType.visiblePassword),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot password ?',
                            style: TextStyle(
                              color: Color(0xFFF1F1F1),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color(0xFF404144),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/homepage');
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1.0,
                              color: Color(0xFFF1F1F1),
                            ),
                          ),
                        ),
                        Text(
                          'Or continue with',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFFF1F1F1),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1.0,
                              color: Color(0xFFF1F1F1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          login('assets/icon-google.png', 15),
                          login('assets/icon-apple.png', 30),
                          login('assets/icon-facebook.png', 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFF1F1F1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFF1F1F1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}