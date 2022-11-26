import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pas_project/button_bar.dart';
import 'package:pas_project/homepage.dart';
import 'package:pas_project/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color.fromARGB(255, 32, 186, 50),
                gradient: LinearGradient(colors: [(Color.fromARGB(255, 86, 179, 90)), Color.fromARGB(214, 223, 255, 224)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Image.asset(
                          "assets/image/logo_company.jpeg",
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.bottomRight,
                      )
                    ],
                  )
              ),
            ),
            Container(
                        margin: EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.center,
                        child: Text(
                          "Login Sekarang",
                          style: TextStyle(
                            height: 0,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          color: Color.fromARGB(255, 86, 179, 90)
                          ),
                        ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],  
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],                
              ),
              child: TextField(
                cursorColor: Color.fromARGB(255, 86, 179, 90),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 86, 179, 90),
                  ),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Color.fromARGB(255, 86, 179, 90),
                decoration: InputDecoration(
                  focusColor: Color.fromARGB(255, 86, 179, 90),
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color.fromARGB(255, 86, 179, 90),
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here
                },
                child: Text("Forget Password?"),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Example(),
                        )
                      );
                // Write Click Listener Code Here.
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [(new  Color.fromARGB(255, 86, 179, 90)), new Color.fromARGB(255, 86, 179, 90)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)
                    ),
                  ],
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 86, 179, 90)
                      ),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        )
                      );
                    },
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}