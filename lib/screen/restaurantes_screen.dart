import 'package:application_movil/services/category_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class RestaurantesSwipper extends StatelessWidget{
  const RestaurantesSwipper({Key? key}):super (key: key);

  @override
  Widget build(BuildContext context) {

    final categoriesService = Provider.of<CategoryService>(context);

    return const CustomContentRH(
      text: Text('Restaurante'),
      img: AssetImage('assets/restaurante/restaurante-1.jpg'),
    );
  }
}

