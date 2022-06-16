import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HospedajeScreen extends StatelessWidget{
  const HospedajeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomContentRH(
      text: Text('Hospedaje'),
      img: AssetImage('assets/hospedaje/hospedaje-1.jpg'),
    );
  }

}