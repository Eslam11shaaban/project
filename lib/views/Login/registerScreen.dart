import 'package:flutter/material.dart';
import 'package:flutter_app2/views/homeScreen/homeScreen.dart';
import '../../component/CustomTextField.dart';
import '../../component/SocialButton.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmationPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/Group.png',
                          height: 300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('register your account',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      custemTextField(
                        hintText: 'email',
                        obscuretext: false,
                        controller: emailController,
                        myValidator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please enter E-mail';
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
                        hintText: 'password',
                        controller: passwordController,
                        obscuretext: true,
                        myValidator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please enter Password';
                          }
                          if (text.length < 6) {
                            return 'Password should be at least 6 characters.';
                          }
                          return null;
                        },
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      custemTextField(
                        hintText: 'Confirm password',
                        controller: confirmationPasswordController,
                        obscuretext: true,
                        myValidator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please enter Password';
                          }
                          if (text != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Proceed with registration logic
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return homeScreen();
                                }),
                              );
                            }
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SocialButton(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account! ',
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return loginScreen();
                                }),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void register(){
    if (formKey.currentState?.validate()==true){

    }
  }
}
