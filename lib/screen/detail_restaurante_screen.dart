import 'package:application_movil/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailRestauranteScreen extends StatelessWidget{
  const DetailRestauranteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Primer Restaurante'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon:const Icon(Icons.account_circle_outlined)
          )
        ],
      ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/restaurante/restaurante-1.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.home,  size: 40)
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, 'mapa');
                  }, 
                  icon:const Icon(Icons.add_location, size: 40)
                ),
                IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.calendar_month, size: 40,)
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child:const Text('Reserva tu cita')
                )
              ],
            ),
            const SizedBox(height:20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Sunt eu veniam sint amet velit commodo irure. Enim tempor in magna incididunt excepteur sit. Occaecat ad ea Lorem laborum dolor officia. Voluptate minim elit aliqua tempor ut adipisicing excepteur excepteur dolore occaecat adipisicing. Eiusmod id consequat veniam ipsum dolor ullamco officia. Velit veniam ullamco ut aute sunt.'),
            ),
            Row(
              children: [
                IconButton(
                  onPressed:(){}, 
                  icon:const Icon(Icons.star)              
                ),
                IconButton(
                  onPressed:(){}, 
                  icon:const Icon(Icons.star)              
                ),
                IconButton(
                  onPressed:(){}, 
                  icon:const Icon(Icons.star)              
                ),
                IconButton(
                  onPressed:(){}, 
                  icon:const Icon(Icons.star)              
                ),
                IconButton(
                  onPressed:(){}, 
                  icon:const Icon(Icons.star_outline)              
                ),
                Expanded(
                  child: IconButton(
                    onPressed:(){}, 
                    icon: Icon(Icons.favorite, size: 40,),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Comentario',
                  hintStyle: TextStyle(
                    color: Colors.deepPurple[200],
                    fontStyle: FontStyle.italic
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}