import 'package:application_movil/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}):super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 200),
              LoginCard(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Ingreso', style: Theme.of(context).textTheme.headline4),
                    const SizedBox(height: 30),
                    _LoginFomr(),
                  ]
                ),
              )
            ],
          )
        )
      ),
    );
  }
}

class _LoginFomr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration:const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  )
                ),
                hintText: 'name@gmail.com',
                labelText: 'Correo Electronico',
                labelStyle: TextStyle(
                  color: Colors.grey
                ),
                prefixIcon: Icon(Icons.alternate_email, color: Colors.deepPurple,)
              )
            )
          ],
        )
      ),
    );
  }

}