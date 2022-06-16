import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text(
              'To Travel'
            ),
          ),
          ListTile(
            title:const Text('Categoria'),
            onTap: (){
              Navigator.pushNamed(context, 'category');
            },
          ),
          ListTile(
            title:const Text('Restaurantes'),
            onTap: (){
              Navigator.pushNamed(context, 'restaurantes');
            },
          ),
          ListTile(
            title:const Text('Hospedajes'),
            onTap: (){
              Navigator.pushNamed(context, 'hospedajes');
            },
          )
        ],
      ),
    );
  }
}