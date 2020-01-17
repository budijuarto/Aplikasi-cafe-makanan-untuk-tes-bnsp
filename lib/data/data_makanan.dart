
import 'package:cafe_super/model/model_makanan.dart';

class DataMakanan {
  //set data
  static var itemMakanan = [
    ModelMakanan(
        "Nasi Goreng",
        "Nasi goreng ayam yang disajikan dengan dengan telur mata sapi disertai satai ayam",
        "gambar/Nasi-Goreng.jpg",
        "Harga : 50.000"),
    ModelMakanan(
        "Cireng",
        "Makanan ringan berupa tepung kanji goreng isi bahan dasar tempe fermentasi yang disebut oncom, disajikan  dengan bumbu kacang pedas",
        "gambar/cireng.jpg",
        "Harga : 10.000"),
    ModelMakanan(
        "Batagor",
        "Baso dan Tahu Goreng dengan sajian bumbu kacang dan kecap khas Bandung",
        "gambar/batagor.jpg",
        "Harga : 25.000"),
    ModelMakanan(
        "Kopi Hitam",
        "Kopi Hitam dengan dibuat dengan teknik espresso, dimana biji kopi yang digunakan yaitu berasal dari Aceh Gayo jenis Arabika disajikan dengan gula Terpisah",
        "gambar/kopi.jpg",
        "Harga : 10.000"),
    ModelMakanan(
        "Cappucino",
        "Paduan kopi dengan buih susu kental serta menggunakan sirup karamel, dimana biji kopi yang digunakan berasal dari Gunung Puntang Jawa Barat jenis Robusta",
        "gambar/cappucino.jpg",
        "Harga : 20.000"),
    ModelMakanan(
        "Sparkling Tea",
        "Minuman teh yang menggunakan daun teh dari pegunungan daerah Garut dengan tambahan sari melati asli dan gula merah alami",
        "gambar/s-tea.jpg",
        "Harga : 15.000"),
    ModelMakanan(
        "Cheese Cake",
        "Kue Tart 1 slice dengan bahan utama cream cheese dengan topping utama cream cheese dengan topping buah-buahan asli seperti anggur,jeruk,kiwi",
        "gambar/cheesecake.jpg",
        "Harga : 40.000"),
    ModelMakanan(
        "Black salad",
        "Potongan buah-buah segar yang terdiri dari pepaya, jambu, melon,dan mangga disajikan dengan bumbu rujak kacang pedas dan gula merah",
        "gambar/Black-Salad.jpg",
        "Harga : 30.000"),
  ];
  //get index data
  static ModelMakanan getItemMakanan(int index) {
    return itemMakanan[index];
  }

//get size data
  static var itemcount = itemMakanan.length;
}
