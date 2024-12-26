import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:makan_bree/utils/food_store.dart';

class DetailListPage extends StatefulWidget {
  final FoodStore storeItem;
  final VoidCallback toggleFavorite;

  const DetailListPage({
    super.key,
    required this.storeItem,
    required this.toggleFavorite,
  });
  @override
  State<DetailListPage> createState() => _DetailListPageState();
}

class _DetailListPageState extends State<DetailListPage> {
  late bool isFavorite;

  void initState() {
    super.initState();
    isFavorite = widget.storeItem.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: kIsWeb
          ? Center(
              child: Column(
                children: [
                  Text(
                    widget.storeItem.name,
                    style: const TextStyle(
                      fontSize: 42.0,
                      fontFamily: "BebasNeue",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDF7B07),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        widget.storeItem.imagePath,
                        width: 350.0,
                        height: 350.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Card(
                      elevation: 2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 64, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.storeItem.name,
                                  style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            widget.toggleFavorite();
                                          });
                                        },
                                        icon: Icon(
                                          widget.storeItem.favorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: widget.storeItem.favorite
                                              ? Colors.red
                                              : Colors.grey,
                                        )),
                                    Text(
                                      "${widget.storeItem.likes} Likes",
                                      style: const TextStyle(fontSize: 22),
                                    )
                                  ],
                                ),
                              ],
                            ),
                             const SizedBox(height: 10),
                                const Text(
                                  'Description',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  widget.storeItem.description,
                                  style: const TextStyle(
                                      fontSize: 18, height: 1.5),
                                )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Tombol Back di sisi kiri
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back, size: 24),
                            ),
                          ),
                          // Teks di tengah
                          Center(
                            child: Text(
                              widget.storeItem.name,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontFamily: "BebasNeue",
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFDF7B07),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Bagian Gambar
                  Center(
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          widget.storeItem.imagePath,
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),
                  // Bagian Judul dan Ikon Like
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.storeItem.name,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                widget.storeItem.favorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: widget.storeItem.favorite
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.toggleFavorite();
                                });
                              },
                            ),
                            Text(
                              "${widget.storeItem.likes} Likes",
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Bagian Deskripsi
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          widget.storeItem.description,
                          style: const TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
