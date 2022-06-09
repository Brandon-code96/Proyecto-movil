import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super (key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.5, 0.5),
      children: [
        const FadeInImage(
          image: AssetImage("assets/home.jpg"),
          placeholder: AssetImage("assets/loading.gif"),
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Column(
          children: const [
            _Buttons(text: Text('Iniciar sesion')),
            _Buttons(text: Text('Registrarse')), 
          ],
        ),
      ],
    );    
  }
}

class _Buttons extends StatelessWidget {
  final Text text;
  const _Buttons({
    Key? key, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:[
          const Padding(padding: EdgeInsets.only(top: 30)),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: text,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}