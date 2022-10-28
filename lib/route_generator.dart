import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/burc_listesi.dart';
import 'package:burc_rehberi/model/burc.dart'; 
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? route_generator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BurcListesi(),
        );
      case '/burcDetay':
        final Burc secilen = settings.arguments as Burc;
        return MaterialPageRoute(
          builder: (context) => BurcDetay(secilenBurc: secilen),
        );
    }
  }
}
