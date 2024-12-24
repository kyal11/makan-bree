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
    description:
        "Pagi Sore adalah restoran Padang yang terkenal dengan cita rasa otentik dan kualitas makanan yang konsisten. Restoran ini menyajikan hidangan khas Minang seperti rendang, gulai, dendeng balado, dan sambal ijo, semuanya disiapkan dengan rempah-rempah yang kaya. Tempat ini menjadi favorit banyak orang untuk menikmati masakan Padang yang lezat.",
    likes: 120,
    favorite: true,
  ),
  FoodStore(
    name: "Sate Khas Senayan",
    imagePath: "assets/images/satekhassenayan.png",
    description:
        "Sate Khas Senayan menyediakan sate dengan bumbu kacang khas yang kental dan kaya rasa. Selain sate ayam dan sapi, restoran ini juga menawarkan menu tradisional Indonesia seperti sop buntut dan nasi goreng kambing. Tempat ini cocok untuk keluarga dan pecinta makanan Indonesia.",
    likes: 85,
    favorite: false,
  ),
  FoodStore(
    name: "Bakmi GM",
    imagePath: "assets/images/bakmigm.png",
    description:
        "Bakmi GM adalah pilihan terbaik untuk para pecinta mie di Indonesia. Hidangan mie yang kenyal, pangsit goreng renyah, dan topping ayam yang gurih menjadikannya sangat populer. Selain mie, menu nasi goreng dan ayam cah jamur juga sangat direkomendasikan bagi pelanggan.",
    likes: 110,
    favorite: true,
  ),
  FoodStore(
    name: "Bebek Kaleyo",
    imagePath: "assets/images/bebekkaleyo.png",
    description:
        "Bebek Kaleyo menyajikan berbagai olahan bebek yang lezat, mulai dari bebek goreng hingga bebek bakar. Daging bebek yang empuk dan gurih dipadukan dengan sambal khas membuat tempat ini menjadi pilihan utama bagi pecinta masakan Nusantara dengan harga yang terjangkau.",
    likes: 150,
    favorite: true,
  ),
  FoodStore(
    name: "Ayam Geprek Bensu",
    imagePath: "assets/images/ayamgeprekbensu.jpg",
    description:
        "Ayam Geprek Bensu terkenal dengan rasa pedasnya yang menggugah selera. Dengan pilihan tingkat kepedasan yang bisa disesuaikan, ayam geprek di tempat ini sangat cocok untuk pecinta makanan pedas. Menu pelengkap seperti tahu goreng dan nasi hangat semakin melengkapi hidangan.",
    likes: 95,
    favorite: false,
  ),
  FoodStore(
    name: "Warung Leko",
    imagePath: "assets/images/warungleko.jpg",
    description:
        "Warung Leko menyajikan iga sapi penyet yang empuk dengan sambal khas yang pedas dan menggoda. Menu khas lainnya seperti ayam penyet dan sop iga juga menjadi pilihan favorit pelanggan. Restoran ini menghadirkan cita rasa Nusantara yang autentik dan nikmat.",
    likes: 78,
    favorite: true,
  ),
  FoodStore(
    name: "Richeese Factory",
    imagePath: "assets/images/richeesefactory.png",
    description:
        "Richeese Factory adalah tempat favorit bagi pecinta ayam goreng dengan saus keju pedas yang khas. Dengan rasa yang unik dan harga yang terjangkau, restoran ini menawarkan pengalaman makan yang menyenangkan bagi keluarga dan anak muda.",
    likes: 140,
    favorite: true,
  ),
  FoodStore(
    name: "Baso Aci Akang",
    imagePath: "assets/images/baksoaciakang.png",
    description:
        "Baso Aci Akang menghadirkan hidangan khas dengan cita rasa yang otentik. Kuah pedas, baso aci kenyal, tahu, dan ceker adalah kombinasi sempurna yang menjadikan tempat ini favorit banyak orang untuk menikmati makanan ringan khas Indonesia.",
    likes: 62,
    favorite: false,
  ),
  FoodStore(
    name: "Martabak Orins",
    imagePath: "assets/images/martabakorins.jpg",
    description:
        "Martabak Orins terkenal dengan isian martabak manis dan asin yang melimpah. Pilihan topping seperti coklat, keju, kacang, dan telur menjadikan tempat ini populer untuk sajian makanan ringan atau cemilan keluarga yang menggugah selera.",
    likes: 73,
    favorite: true,
  ),
  FoodStore(
    name: "Kopi Kenangan",
    imagePath: "assets/images/kopikenangan.png",
    description:
        "Kopi Kenangan adalah kafe favorit untuk pecinta kopi lokal dengan berbagai varian rasa. Kopi susu gula aren yang khas menjadi menu unggulan, menjadikan tempat ini pilihan yang tepat untuk melepas penat atau bekerja sambil menikmati kopi.",
    likes: 120,
    favorite: false,
  ),
  FoodStore(
    name: "Steak 21",
    imagePath: "assets/images/steak21.png",
    description:
        "Steak 21 menyajikan steak berkualitas tinggi dengan harga yang terjangkau. Berbagai pilihan saus seperti barbeque dan blackpepper membuat tempat ini cocok untuk makan malam spesial bersama keluarga atau teman.",
    likes: 90,
    favorite: true,
  ),
  FoodStore(
    name: "J.Co Donuts",
    imagePath: "assets/images/jcodonuts.png",
    description:
        "J.Co Donuts menghadirkan donat lembut dengan berbagai topping kreatif seperti coklat, keju, dan almond. Tempat ini juga menawarkan aneka minuman kopi yang cocok untuk dinikmati bersama donat favorit Anda.",
    likes: 112,
    favorite: false,
  ),
];
