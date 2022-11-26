import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pas_project/model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final gambar = <String>[
      "assets/image/teh_cina.png",
      "assets/image/kopi_panas.png"
    ];

    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
              mainAxisExtent: 230,
            ),
            scrollDirection: Axis.vertical,
            itemCount: anFurniture.length,
            itemBuilder: (context, index) {
                          final produk = anFurniture[index];
              return InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ]),
                  margin: EdgeInsets.all(10),
                  width: 160,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 115,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      child: Hero(
                                        tag: "Teh Cina",
                                        child: Image.asset(produk.gambar),
                                        transitionOnUserGestures: true,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 120,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 70,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        produk.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                       Text(
                                      produk.harga,
                                    ),
                                  ],
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
            }));
  }
}
