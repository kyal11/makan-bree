import 'package:flutter/material.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite(
      {super.key, required this.imagePath, required this.title, required this.isFavorite, required this.onFavoriteToogle, required this.likes});

  final String imagePath;
  final String title;
  final bool isFavorite;
  final int likes;
  final VoidCallback onFavoriteToogle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8.0,
      margin: const EdgeInsets.only(right: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                width: 140.0,
                height: 140.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                    size: 16.0,
                  ),
                  onPressed: () {
                    onFavoriteToogle();
                  },
                ),
                const SizedBox(width: 5.0),
                Text(
                  '${likes} Likes',
                  style: const TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

