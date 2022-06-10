import 'package:application_movil/providers/login_form_provider.dart';
import 'package:application_movil/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                    ChangeNotifierProvider(
                      create: (_)=> LoginFormProvider(),
                      child: _LoginFomr(),
                    )
                  ]
                ),
              ),
              const SizedBox( height: 20 ),
              const Text('Crear una nueva cuenta', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ),),
              const SizedBox( height: 20 ),
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
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration:AuthInputDecoration(
                hinText: 'user@gmail.com', 
                labelText: 'Correo Electronico',
                prefIcon: Icons.alternate_email,
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value){
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp  = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                  ? null
                  : 'No es un correo valido';
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration:AuthInputDecoration(
                hinText: '****', 
                labelText: 'Contraseña',
                prefIcon: Icons.lock_clock_outlined,
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value){
                return (value != null && value.length>= 6)
                ? null
                : 'La contraseña como minimo debe tener 6 caracteres';
              },
            ),
            const SizedBox(height: 10),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Text(
                loginForm.isLoading
                ? 'Espere'
                : 'Ingresar',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: loginForm.isLoading ? null : ()async{
                FocusScope.of(context).unfocus();
                if(!loginForm.isValidForm()) return;
                loginForm.isLoading = true;
                await Future.delayed(Duration(seconds: 2));
                loginForm.isLoading = false;
                Navigator.pushReplacementNamed(context, 'home');
              }
            )
          ],
        )
      ),
    );
  }

  InputDecoration AuthInputDecoration({
    required String hinText,
    required String labelText,
    IconData? prefIcon,
  }) 
  {
    return InputDecoration(
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
      hintText: hinText,
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.grey
      ),
      prefixIcon: prefIcon != null 
      ? Icon(prefIcon, color: Colors.deepPurple,)
      : null,
    );
  }
}