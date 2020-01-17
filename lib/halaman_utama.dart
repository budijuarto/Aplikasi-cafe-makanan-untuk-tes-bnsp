
import 'package:cafe_super/screens/halaman_makanan.dart';
import 'package:cafe_super/screens/list_pesanan.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman utama"),
      ),
      body: uiUtama(context),
    );
  }

  uiUtama(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: <Widget>[
                tampilanMenu(context,"List Menu", "gambar/makanan.png", Colors.blue[500],HalamanMakanan()),
                // SizedBox(
                //   width: 10,
                // ),
                // tampilanMenu(context,"List Pesanan", "gambar/makanan.png", Colors.blueAccent,HalamanMakanan())
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                // tampilanMenu(context,"List Desert", "gambar/ima.png", Colors.greenAccent,HalamanMakanan()),
                // SizedBox(
                //   width: 10,
                // ),
                tampilanMenu(context,"Pesanan", "gambar/ima.png", Colors.green[500],NoteList())
              ],
            ),
          ),       

        ],
      ),
    );
  }

  Widget tampilanMenu(BuildContext context,String isitext, String url, Color warna
  ,Widget kelastujuan) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>kelastujuan
          ));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: warna,
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                child: Image.asset(url),
              ),
              Text(
                isitext,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
