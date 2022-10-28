import 'package:burc_rehberi/route_generator.dart';
import 'package:flutter/material.dart';

import 'burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      /* home: BurcListesi(), */

//ROUTE GENERATOR KULLANMAK İSTERSEK ANA SAYFADA CLASSTAKİNE BENZER BİR YAPI OLUŞTURMAMIZ GEREKİYOR.
      onGenerateRoute: RouteGenerator.route_generator,
    );
  }
}
