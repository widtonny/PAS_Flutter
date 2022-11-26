import 'dart:convert';

import 'package:flutter/widgets.dart';

class TeaModel {
  late final String name;
  final String gambar;
  final String harga;
  final String pesan;

  TeaModel({
    required this.gambar,
    required this.name,
    required this.harga,
    required this.pesan,
  });
}

List<TeaModel> anFurniture = [
  TeaModel(
    name: "Teh cina",
    gambar: 'assets/image/teh_cina.png',
    harga: "20.000",
    pesan: "Pesan",
  ),
  TeaModel(
    name: "Kopi hitam",
    gambar: 'assets/image/kopi_hitam.png',
    harga: "20.000",
    pesan: "Pesan",
  ),
];
