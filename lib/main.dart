import 'package:flutter/material.dart';

import 'package:application_movil/screen/screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_)=> const HomeScreen(),
        'login': (_)=> const LoginScreen(),
        'category': (_)=> const CategoryScreen(),
        'restaurantes': (_)=> const RestaurantesSwipper(),
        'hospedajes': (_)=>const HospedajeScreen(),
        'detailRestaurante': (_)=>const DetailRestauranteScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
      )
    );
  }

}