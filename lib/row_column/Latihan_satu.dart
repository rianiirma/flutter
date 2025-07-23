import 'package:flutter/material.dart';
import 'package:learning/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Dapur Mama Doweng',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu Hari Ini',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 54, 58, 90),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                _menuPhoto('https://i.imgur.com/Uv2Yqzo.jpg'),
                _menuPhoto('https://i.imgur.com/Uv2Yqzo.jpg'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                _menuPhoto('https://i.imgur.com/Uv2Yqzo.jpg'),
                _menuPhoto('https://i.imgur.com/Uv2Yqzo.jpg'),
                _menuPhoto('https://i.imgur.com/Uv2Yqzo.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuPhoto(String imageUrl) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 120,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 120,
                color: Colors.grey[200],
                child: const Center(child: CircularProgressIndicator()),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 120,
                color: Colors.grey[300],
                child: Center(
                  child: Icon(Icons.broken_image, size: 40, color: Colors.grey),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
