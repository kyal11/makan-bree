class FoodStore {
  final String name;
  final String imagePath;
  final String description;
  int likes;
  bool favorite;

  FoodStore({
    required this.name,
    required this.imagePath,
    required this.description,
    this.likes = 0,
    this.favorite = false,
  });
}

final List<FoodStore> storeList = [
  FoodStore(
    name: "Pagi Sore",
    imagePath: "assets/images/pagi_sore.jpg",
    description: "Pagi Sore adalah restoran Padang yang terkenal dengan cita rasa otentik.",
    likes: 120,
    favorite: true,
  ),
  FoodStore(
    name: "Sate Khas Senayan",
    imagePath: "assets/images/satekhassenayan.png",
    description: "Sate Khas Senayan menyediakan sate dengan bumbu kacang yang lezat.",
    likes: 85,
    favorite: false,
  ),
  FoodStore(
    name: "Bakmi GM",
    imagePath: "assets/images/bakmigm.png",
    description: "Bakmi GM adalah pilihan terbaik untuk para pecinta mie.",
    likes: 110,
    favorite: true,
  ),
  FoodStore(
    name: "Bebek Kaleyo",
    imagePath: "assets/images/bebekkaleyo.png",
    description: "Bebek Kaleyo menyajikan bebek dengan tekstur daging yang empuk dan gurih.",
    likes: 150,
    favorite: true,
  ),
  FoodStore(
    name: "Ayam Geprek Bensu",
    imagePath: "assets/images/ayamgeprekbensu.jpg",
    description: "Ayam Geprek Bensu terkenal dengan rasa pedasnya yang menggugah selera.",
    likes: 95,
    favorite: false,
  ),
  FoodStore(
    name: "Warung Leko",
    imagePath: "assets/images/warungleko.jpg",
    description: "Warung Leko menyajikan iga sapi penyet dengan sambal khas.",
    likes: 78,
    favorite: true,
  ),
  FoodStore(
    name: "Richeese Factory",
    imagePath: "assets/images/richeesefactory.png",
    description: "Richeese Factory adalah tempat favorit bagi pecinta ayam keju pedas.",
    likes: 140,
    favorite: true,
  ),
  FoodStore(
    name: "Baso Aci Akang",
    imagePath: "assets/images/baksoaciakang.png",
    description: "Baso Aci Akang menghadirkan baso aci dengan kuah pedas yang khas.",
    likes: 62,
    favorite: false,
  ),
  FoodStore(
    name: "Martabak Orins",
    imagePath: "assets/images/martabakorins.jpg",
    description: "Martabak Orins terkenal dengan isian martabak manis dan asin yang melimpah.",
    likes: 73,
    favorite: true,
  ),
  FoodStore(
    name: "Kopi Kenangan",
    imagePath: "assets/images/kopikenangan.png",
    description: "Kopi Kenangan adalah kafe favorit untuk pecinta kopi lokal.",
    likes: 120,
    favorite: false,
  ),
  FoodStore(
    name: "Steak 21",
    imagePath: "assets/images/steak21.png",
    description: "Steak 21 menyajikan steak berkualitas dengan harga terjangkau.",
    likes: 90,
    favorite: true,
  ),
  FoodStore(
    name: "J.Co Donuts",
    imagePath: "assets/images/jcodonuts.png",
    description: "J.Co Donuts menghadirkan donat lembut dengan topping yang beragam.",
    likes: 112,
    favorite: false,
  ),
];
