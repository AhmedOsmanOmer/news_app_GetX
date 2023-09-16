import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signUp.dart';
import 'package:flutter_application_1/home.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text:  const TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "N",
                    style: TextStyle(
                        fontFamily: 'dance',
                        fontSize: 70,
                        color: Colors.black)),
                TextSpan(
                    text: "ews",
                    style: TextStyle(fontSize: 40, color: Colors.lightBlue))
              ]),
            ),
            const SizedBox(height: 30),
             const Padding(
              padding: EdgeInsets.only(right: 190),
              child: Text(
                "Welcome Back",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.lightBlue),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email,color: Colors.lightBlue,)),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock,color: Colors.lightBlue,)),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.black,
                 activeColor: Colors.lightBlue,
                  onChanged: (val) {
                    setState(() {
                      isCheck = val!;
                    });
                  },
                  value: isCheck,
                ),
                const Text("Remember Me",style: TextStyle(
                  color: Colors.lightBlue
                ),),
                const SizedBox(width: 80),
                const Text("Forget Password",style: TextStyle(
                  color: Colors.lightBlue
                ))
              ],
            ),
            InkWell(
              onTap: (){
                Get.to(Home());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.lightBlue, borderRadius: BorderRadius.circular(50)),
                child: const Text("Login",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),
              ),
            ),
            const Text("Or Login With"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/facebook.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/instagram.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/tweeter.png"),
                ),
              ],
            ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont have Account?",
                    style: TextStyle(color: Colors.black)),
                  InkWell(
                    onTap: (){
                      Get.to(const SignUp());
                    },
                    child: const Text( "SignUp",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
