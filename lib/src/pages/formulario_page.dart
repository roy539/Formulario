import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode emailFocus;
  FocusNode passwordFocus;

  String nombre;
  String email;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Rodrigo González'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('¡Hola! Bienvenido a Halo Reach ', style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                Container(
                  width: 1000.0,
                  height: 200.0,
                  child: Center(
                    child: Image.network(
                        'https://i.pinimg.com/originals/94/f1/d1/94f1d1cd8292f0128726ee43c3b42b45.gif'),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Usuario',
                      hintText: 'Ejemplo: Fulanito de tal',
                      prefixIcon: Icon(Icons.account_box_outlined)),
                  //controller: nombreTextController,
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo obligatorio';
                    }
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, emailFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'gmail',
                      hintText: 'usuario@gmail.com',
                      prefixIcon: Icon(Icons.mail_outline_sharp)),
                  //controller: apTextController,
                  onSaved: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo obligatorio';
                    }
                  },
                  focusNode: this.passwordFocus,
                  onEditingComplete: () => requestFocus(context, emailFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'caracteres, letras y números',
                        prefixIcon: Icon(Icons.lock_open_sharp)),
                    //controller: apTextController,
                    onSaved: (value) {
                      password = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo obligatorio';
                      }
                    }),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                    color: Colors.purple,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('Registrarse')),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      if (nombre.compareTo('Rodri') == 0 &&
                          email.compareTo('rodrigo123654@gmail.com') == 0 &&
                          password.compareTo('rodrigo1234') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                email: this.email,
                                password: this.password));
                      } else {
                        print('Datos erroneos');
                      }
                    }
                  },
                  child: Text(' Iniciar Sesión'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String email;
  String password;

  Argumentos({this.nombre, this.email, this.password});
}