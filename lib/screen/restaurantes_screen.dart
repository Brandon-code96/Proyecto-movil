import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RestaurantesSwipper extends StatelessWidget{
  const RestaurantesSwipper({Key? key}):super (key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContentRH(
      text: Text('Restaurante'),
      img: AssetImage('assets/restaurante/restaurante-1.jpg'),
    );
  }
}

