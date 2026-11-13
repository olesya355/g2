import 'package:flutter/material.dart';
import '../models/photo.dart';

class PhotoScreen extends StatelessWidget {
  final Photo photo;

  const PhotoScreen({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация о фотографии'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              photo.imgSrc,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text('ID фотографии: ${photo.id}'),
            Text('Марсианский день (Sol): ${photo.sol}'),
            Text('Дата съёмки: ${photo.earthDate}'),
            const Divider(height: 30),
            const Text(
              'Информация о камере',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Название: ${photo.camera.name}'),
            Text('Полное название: ${photo.camera.fullName}'),
            const Divider(height: 30),
            const Text(
              'Информация о марсоходе',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Марсоход: ${photo.rover.name}'),
            Text('Дата запуска: ${photo.rover.launchDate}'),
            Text('Дата посадки: ${photo.rover.landingDate}'),
            Text('Статус: ${photo.rover.status}'),
          ],
        ),
      ),
    );
  }
}