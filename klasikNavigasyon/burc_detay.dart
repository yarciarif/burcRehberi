import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.pink;
  //PALETTE GENERATOR SCROLL YUKARI KAYINCA ÜST BARDAKİ RENGİ RESMİN RENGİNE GÖRE GETİRİYOR.
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              widget.secilenBurc.burcAdi + 'Burcu ve Özellikleri',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.secilenBurc.burcBuyukResim,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        )
      ],
    ));
  }
//PALETTEGENERATOR KULLANIMI
  void appBarRenginiBul() async {
    //builtten widgeta erişemediği için widget. ile çağırıyoruz.
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {});
    print(appBarRengi);
  }
}
