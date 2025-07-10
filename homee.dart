import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qwe/Homepage.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();
  Future<void> Login() async
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: Password.text);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Homepage")),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter mail id"
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: Password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the password"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            Login();
            },
              child:Text("login")),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){},child: Text("signup")),
          )
        ],
      )
    );
  }
}
