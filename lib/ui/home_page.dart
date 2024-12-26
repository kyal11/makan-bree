import 'package:flutter/material.dart';
import 'package:makan_bree/ui/detail_list_page.dart';
import 'package:makan_bree/utils/food_store.dart';
import 'package:makan_bree/widgets/card_favorite.dart';
import 'package:makan_bree/widgets/card_restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final storeItems = storeList.toList();
  void toggleFavorite(int index) {
    setState(() {
      if (storeItems[index].favorite) {
        storeItems[index].likes -= 1;
      } else {
        storeItems[index].likes += 1;
      }

      storeItems[index].favorite = !storeItems[index].favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Row(
                children: [
                  Text(
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
                      color: Color(0xFFDF7B07),
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            storeItems.where((item) => item.favorite).isNotEmpty
                ? Padding(
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
                          child: Scrollbar(
                            controller: _scrollController,
                            child: ListView.builder(
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              itemCount: storeItems
                                  .where((item) => item.favorite)
                                  .length,
                              itemBuilder: (context, index) {
                                final favoriteItems = storeItems
                                    .where((item) => item.favorite)
                                    .toList();
                                final item = favoriteItems[index];

                                return InkWell(
                                  onTap: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailListPage(
                                          storeItem: storeItems[
                                              storeItems.indexOf(item)],
                                          toggleFavorite: () => toggleFavorite(
                                              storeItems.indexOf(item)),
                                        ),
                                      ),
                                    )
                                  },
                                  child: CardFavorite(
                                    imagePath: item.imagePath,
                                    title: item.name,
                                    isFavorite: item.favorite,
                                    onFavoriteToogle: () => toggleFavorite(
                                        storeItems.indexOf(item)),
                                    likes: item.likes,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Restaurant',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Flexible(child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Tentukan jumlah grid berdasarkan lebar layar
                        int crossAxisCount;
                        double width = constraints.maxWidth;

                        if (width >= 1600) {
                          crossAxisCount = 4; // 4 kolom untuk layar >= 1600
                        } else if (width >= 1200) {
                          crossAxisCount = 3; // 3 kolom untuk layar >= 1200
                        } else if (width >= 600) {
                          crossAxisCount = 2; // 2 kolom untuk layar >= 600
                        } else {
                          crossAxisCount = 1; // 1 kolom untuk layar < 600
                        }

                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 3 / 1,
                          ),
                          itemCount: storeItems.length,
                          itemBuilder: (context, index) {
                            final storeItem = storeItems[index];
                            return InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailListPage(
                                      storeItem: storeItems[index],
                                      toggleFavorite: () =>
                                          toggleFavorite(index),
                                    ),
                                  ),
                                )
                              },
                              child: CardRestaurant(
                                imagePath: storeItem.imagePath,
                                title: storeItem.name,
                                description: storeItem.description,
                              ),
                            );
                          },
                        );
                      },
                    ))
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
