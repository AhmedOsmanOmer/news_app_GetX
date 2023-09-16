import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "R",
                      style: TextStyle(
                          fontFamily: 'dance',
                          fontSize: 70,
                          color: Colors.black)),
                  TextSpan(
                      text: "egister",
                      style: TextStyle(fontSize: 40, color: Colors.lightBlue))
                ]),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    label: Text("Username"),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.lightBlue,
                    )),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    label: Text("Email"),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.lightBlue,
                    )),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    label: Text("Password"),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.lightBlue,
                    )),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    label: Text("Confirm Password"),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.lightBlue,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(50)),
                child: const Text("Register",style:TextStyle(
                  fontSize:16,
                )),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have Account?",
                    style: TextStyle(color: Colors.black)),
                  InkWell(
                    onTap: (){
                      Get.to(const Login());
                    },
                    child: const Text( "Login",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
             
            ],
          )),
    );
  }
}
