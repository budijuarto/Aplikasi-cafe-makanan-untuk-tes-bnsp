
import 'package:cafe_super/data/data_makanan.dart';
import 'package:cafe_super/model/model_makanan.dart';
import 'package:flutter/material.dart';

import 'halaman_detail_makanan.dart';



class HalamanMakanan extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Makanan"),
      ),
      body: uiListMakanan(),
    );
  }

  uiListMakanan() {
    return ListView.builder(
      itemCount: DataMakanan.itemcount,
      itemBuilder: (BuildContext context, int index) {
        ModelMakanan makanan = DataMakanan.getItemMakanan(index); 
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>HalamanDetailMakanan(makanan: makanan,)
            ));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(makanan.namaMakanan,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                    subtitle: Text(makanan.hargaMakanan,style: TextStyle(color: Colors.blue),),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        makanan.gambarMakanan,
                      ),
                    ),
                  ),
                  //divider untuk membuat baris pemisah
                  // Divider(color: Colors.black,)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
