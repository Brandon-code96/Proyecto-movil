import 'dart:convert';
import 'package:application_movil/models/categories.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryService extends ChangeNotifier{
  final String _baseUrl = "app-arequipa-default-rtdb.firebaseio.com";
  final List<Categorias> categorias = [];

  bool isLoading = true;

  CategoryService(){
    this.loadCategorias();
  }

  Future loadCategorias() async {
    final url = Uri.https(_baseUrl, 'categorias.json');
    final resp = await http.get(url);

    final Map<String, dynamic> categoriasMap = json.decode(resp.body);
    
    categoriasMap.forEach((key, value) {
      final tempCategory = Categorias.fromMap(value);
      tempCategory.id = key;
      this.categorias.add( tempCategory);
    });

    print(this.categorias[0].description);
  }
}