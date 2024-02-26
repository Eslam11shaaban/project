import 'package:flutter/material.dart';
import 'package:flutter_app2/views/Login/registerScreen.dart';
import 'package:flutter_app2/views/homeScreen/homeScreen.dart';
import '../../component/CustomTextField.dart';
import '../../component/SocialButton.dart';

class loginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Form(
            key: formKey,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/Group.png',
                            height: 315,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        custemTextField(
                          controller: emailController,
                          hintText: 'Email',
                          obscuretext: false,
                          myValidator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter Email';
                            }
                            bool emailValid =
                            RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(text);
                            if (!emailValid) {
                              return 'Please enter a valid email';
                            }
                          },
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        custemTextField(
                          obscuretext: true,
                          hintText: 'Password',
                          controller: passwordController,
                          myValidator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter Password';
                            }
                            if (text.length < 6) {
                              return 'Password should be at least 6 chars.';
                            }
                            return null;
                          },
                          textInputType: TextInputType.text,
                          suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black87),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: double.infinity,
                          height: 65,
                          child: MaterialButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return homeScreen();
                                  }),
                                );
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        SocialButton(),
                        SizedBox(height: 10),
                        Container(
                          height: 65,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return RegisterScreen();
                                    }),
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
