import 'package:catalog/catalog_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtr = TextEditingController();
  final TextEditingController passCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                validator: (value){
                  if(value.isEmpty || value==null){
                    return 'please enter your email';
                  }else if(!value.contains('@gmail.com')){
                    return 'please enter valid email';
                  }else return null;
                },
                controller: emailCtr,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),SizedBox(height: 20,),
              TextFormField(
                validator: (value){
                  if(value.isEmpty || value==null){
                    return 'please enter your password';
                  }else if(value.length<6){
                    return 'password should be 6 characters at least';
                  }else return null;
                },
                controller: passCtr,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              SizedBox(height: 40,),
              MaterialButton(onPressed: (){
                if(_formKey.currentState.validate()){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) =>Catalog() ));
                }
              }, child: Text('ENTER'),color: Colors.yellow,)
            ],
          ),
        ),
      ),
    );
  }
}
