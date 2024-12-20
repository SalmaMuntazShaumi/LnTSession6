import 'package:flutter/material.dart';
import 'package:trial/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Center(child: Text('Login Page', style: TextStyle(fontSize: 24, color: Colors.blue))),
            SizedBox(height: 32),
            Text('Username'),
            TextFormField(
              controller: _controllerUsername,
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(height: 16),
            Text('Password'),
            TextFormField(
              controller: _controllerPassword,
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              });
            }, child: Text('Login'))
          ],
        )
        ),
    );
  }
}