import 'package:flutter/material.dart';

class Program {
  final String image;
  final String nama;
  final String description;

  Program({required this.image, required this.nama, required this.description});
}

final List<Program> program = [
  Program(image: 'image/cpls.png', nama: 'C++', description: 'description'),
  Program(image: 'image/java.png', nama: 'Java', description: 'description2')
];
