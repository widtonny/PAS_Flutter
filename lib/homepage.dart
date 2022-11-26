import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset("assets/image/logo_company.jpeg"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Mari Mulai Hari Mu Dengan Teh",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Image.asset("assets/image/kopi.png"),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 150,
                  height: 200,
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 44,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/image/kopi_panas.png"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}