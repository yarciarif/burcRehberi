import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //UYGUALAMANIN HER YERİNDE STYLE YAZMAMAK FLUTTERIN KAYITLI TEXT LERİNDEN KULLANMAK İÇİN EN BAŞTA TEMA OLARAK TANIMLIYORUZ.
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(5),
      child: Card(
        //gölgelik
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ListTile(
            onTap: () {
              /* Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: listelenenBurc))); */

              Navigator.pushNamed(context, '/burcDetay',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              'images/' + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: TextStyle(color: Colors.red),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
