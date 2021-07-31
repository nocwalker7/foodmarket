part of 'models.dart';

class Food {
  // ignore: unused_field
  int? _id = 1;

  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingerdients;
  final int price;
  final double rate;

  // untuk versi flutter 2.2.3 memerlukan required untuk menutupi null
  Food(
      {required this.id,
      required this.picturePath,
      required this.name,
      required this.description,
      required this.ingerdients,
      required this.price,
      required this.rate});
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://asset.kompas.com/crops/aYqY_70YWiCblHTcMeDvosA3kLQ=/0x0:698x465/750x500/data/photo/2021/03/21/60572418bc083.jpg",
      name: "Seblak Pedas",
      description: "Seblak biasa rasa pedas",
      ingerdients:
          "2 buah cabai rawit merah (tambah kalau kurang pedas, bisa tambahkan juga cabai bubuk) 8 cabai merah besar, buang bijinya 8 cm kencur 2 siung bawang putih 2 buah bawang merah, 150 gram kerupuk 1 butir telur, kocok lepas 1 paha ayam 400 ml kaldu ayam (dari rebusan ayam) 4 butir bakso sapi 4 batang caisim (bisa ganti pakcoy) 2 telur rebus 1 sdt gula pasir 2 sdt garam 1 batang daun bawang, iris 2 sdm minyak goreng",
      price: 10000,
      rate: 4.5),
  Food(
      id: 2,
      picturePath:
          "https://asset.kompas.com/crops/liot8ogozEEYAUXlZNXyGL0pTQc=/3x0:700x465/750x500/data/photo/2021/04/08/606e886b972ac.jpeg",
      name: "Nasi Goreng",
      description: "Nasi dengan rasa campur",
      ingerdients: "Nasi, Bumbu, Sosis, Telur, Daging Ayam",
      price: 15000,
      rate: 4.0),
  Food(
      id: 3,
      picturePath:
          "https://asset.kompas.com/crops/qjRNC3rVlHB4RmopQ6nRX1xHtyo=/35x41:904x621/750x500/data/photo/2020/11/23/5fbbca027b1c8.jpg",
      name: "Mie Ayam",
      description: "Mie campuran dengan Ayam",
      ingerdients: "Mie, Acar, Sawi, Ayam",
      price: 8000,
      rate: 4.7),
];
