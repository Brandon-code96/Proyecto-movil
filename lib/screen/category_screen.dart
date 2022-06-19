import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../widgets/widgets.dart';

class CategoryScreen extends StatelessWidget{
  const CategoryScreen({Key? key}):super (key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){}, 
        //   icon: Icon(Icons.person_outline_rounded)
        // ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.heart_broken_sharp)
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.person)
          )
        ],
        title: const Text('Categorias'),
        elevation: 0,
      ),
      drawer:const MenuDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.6,
                  child: CustomSwiper(size: size),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                TextButton(
                  onPressed: () { 
                    Navigator.pushReplacementNamed(context, 'restaurantes');
                  },
                  child:const Text( 
                    'CATEGORIAS',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemWidth: size.width * 0.5,
      itemHeight: size.height * 0.4,
      itemBuilder: (BuildContext context, int index){
        return Image.network(
          "https://via.placeholder.com/288x188",
          fit: BoxFit.fill,
        );
      },
      viewportFraction: 0.6,
      scale: 0.6,
      itemCount: 3
    );
  }
}