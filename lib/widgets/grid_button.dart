import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  const GridButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 1,
      elevation: 0,
      backgroundColor: Colors.grey[300],
      onPressed: () { print('objectsdf'); },
      child: Card(
        clipBehavior:Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        elevation: 10,
        shadowColor:const Color.fromARGB(2, 2, 2, 2),
        child: Column(
          children: [
            const FadeInImage(
              placeholder: AssetImage('assets/loading.gif'), 
              image: AssetImage('assets/restaurante-1.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              // padding:const EdgeInsets.only(right: 20, top:20),
              child:const Text('Non duis pariatur sint '),
            )
          ]
        ),
      ),
    );
  }
}