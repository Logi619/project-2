import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qwe/Homepage.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> create() async
   {
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email.text,
         password: password.text);

     Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

   }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup"),),
      body: Column(
        children: [
          TextFormField(controller: email,),
          TextFormField(controller: password,),
          ElevatedButton(onPressed: (){
            create();
          }, child: Text("Signup")),

        ],
      ),
    );
  }
}
