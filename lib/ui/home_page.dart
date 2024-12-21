import 'package:flutter/material.dart';
import 'package:makan_bree/utils/food_store.dart';
import 'package:makan_bree/widgets/card_favorite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storeItems = storeList.toList();

  @override
  Widget build(BuildContext context) {
    // Filter hanya item yang favorite = true
    final favoriteItems = storeItems.where((item) => item.favorite).toList();
    void toggleFavorite(int index) {
      setState(() {
        storeItems[index].favorite =
            !storeItems[index].favorite; // Toggle favorite status
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Row(
                children: [
                  const Text(
                    'Hello, Welcome to ',
                    style: TextStyle(
                      fontFamily: "BebasNeue",
                      fontSize: 22.0,
                      letterSpacing: 1.2,
                    ),
                  ),
                  Text(
                    'MAKAN-BREE',
                    style: TextStyle(
                      fontFamily: "BebasNeue",
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: const Color(0xFFDF7B07),
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tempat Makan Favorite',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favoriteItems.length,
                      itemBuilder: (context, index) {
                        final item = favoriteItems[index];

                        return CardFavorite(
                            imagePath: item.imagePath,
                            title: item.name,
                            isFavorite: item.favorite,
                            onFavoriteToogle: () =>
                                toggleFavorite(storeItems.indexOf(item)),
                            likes: item.likes);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Restaurant',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: storeItems.length,
                        itemBuilder: (context, index) {
                          final storeItem = storeItems[index];
                          return InkWell(
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Image.asset(
                                            storeItem.imagePath,
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              storeItem.name,
                                              style: const TextStyle(
                                                  fontSize: 16.0),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(storeItem.description)
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
