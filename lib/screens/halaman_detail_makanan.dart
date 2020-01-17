
import 'package:cafe_super/model/model_makanan.dart';
import 'package:flutter/material.dart';


class HalamanDetailMakanan extends StatelessWidget {
  ModelMakanan makanan;

  HalamanDetailMakanan({Key key, this.makanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.namaMakanan),
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {
            Navigator.pop(context);
          }),
        actions: <Widget>[
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(makanan.gambarMakanan),
            Center(
                child: Text(
              makanan.namaMakanan,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(makanan.detailMakanan),
            )
          ],
        ),
      ),
    );
  }
}
