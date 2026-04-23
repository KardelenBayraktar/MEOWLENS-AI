import 'dart:io';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String imagePath;

  const ResultPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonuç'),
      ),
      body: Column(
        children: [
          Image.file(File(imagePath)),
          const SizedBox(height: 20),
          // Burada TensorFlow Lite modeli ile tahmin yapılacak
          const Text(
            'Tahmin edilen kedi türü:',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
