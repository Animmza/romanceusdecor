import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/pages/sent_verification_email.dart';
import 'package:romanceusdecor/services/auth_services.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _hidePassword = true;
  bool _hideConfirmPassword = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AuthServices _authServices = AuthServices();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  SignUpResponse? _signUpResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenUtilInit(builder: () {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.all(.06.sh),
                        child: Image(
                          image: AssetImage(
                            'assets/blacklogo.png',
                          ),
                          width: .15.sh,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      height: .03.sh,
                    ),
                    Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Enter the details below',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: .05.sh,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: .0075.sh,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is required.";
                        }
                      },
                      controller: _fullNameController,
                      decoration: InputDecoration(
                          hintText: 'Enter Full Name',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                    SizedBox(
                      height: .02.sh,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: .01.sh,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is required.";
                        } else if (_signUpResponse ==
                            SignUpResponse.EmailAlreadyInUse) {
                          return "This email is already in use. Please try another.";
                        } else if (_signUpResponse ==
                            SignUpResponse.InvalidEmail) {
                          return "Invalid Email. Try Again.";
                        }
                      },
                      controller: _emailController,
                      decoration: InputDecoration(
                          hintText: 'Enter email',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                    SizedBox(
                      height: .02.sh,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: .01.sh,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is required.";
                        } else if (_signUpResponse ==
                            SignUpResponse.WeakPassword) {
                          return "Password is too weak. Please Try another.";
                        }
                      },
                      controller: _passwordController,
                      obscureText: _hidePassword,
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_hidePassword
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash),
                            onPressed: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                    SizedBox(
                      height: .02.sh,
                    ),
                    Text(
                      'Confirm Password',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: .01.sh,
                    ),
                    TextFormField(
                      obscureText: _hideConfirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is required.";
                        } else if (value != _passwordController.text) {
                          return "Passwords don't match";
                        }
                      },
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_hideConfirmPassword
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash),
                            onPressed: () {
                              setState(
                                () {
                                  _hideConfirmPassword = !_hideConfirmPassword;
                                },
                              );
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                    SizedBox(
                      height: .02.sh,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _signUpResponse = null;
                          });
                          if (_formKey.currentState!.validate()) {
                            _authServices
                                .signUp(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    fullName: _fullNameController.text)
                                .then((signupResponse) {
                              if (signupResponse ==
                                  SignUpResponse.SignUpSuccessful) {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return SentVerificationEmail(
                                    email: _emailController.text,
                                  );
                                }));
                              } else if (_signUpResponse ==
                                  SignUpResponse.UnkownError) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Unkown Error.Please Try Again.')));
                              } else {
                                setState(() {
                                  _signUpResponse = signupResponse;
                                });
                                _formKey.currentState!.validate();
                              }
                            });
                          }
                        },
                        child: Text('Signup'),
                        style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15.sp),
                            fixedSize: Size(1.sw, .07.sh),
                            elevation: 0,
                            shape: BeveledRectangleBorder()),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/loginpage');
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.grey[800],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
