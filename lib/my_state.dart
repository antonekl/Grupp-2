import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_sok_resultat.dart';
import 'package:my_first_app/Items/sok_item.dart';

class MyState extends ChangeNotifier {
  List<SokItem> list = [];

  List<SokItem> get lista => list;

  Future hamtaLista() async {
    List<SokItem> lista = await SokLista.fetchAlbumList();
    list = lista;
    notifyListeners();
  }
}
