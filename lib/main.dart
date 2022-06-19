import 'package:application_movil/services/category_service.dart';
import 'package:flutter/material.dart';

import 'package:application_movil/screen/screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CategoryService())
      ],
      child: MyApp()
    );
  }

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
        'mapa': (_)=>const MapaScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
      )
    );
  }

}