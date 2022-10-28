import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    /* print(tumBurclar); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(
              listelenenBurc: tumBurclar[index],
            );
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  veriKaynaginiHazirla() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];

      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + 'Buyuk${i + 1}.png';

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetayi, kucukResim, buyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
