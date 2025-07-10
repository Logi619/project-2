import 'package:flutter/material.dart';
class homee extends StatefulWidget {
  const homee({super.key});

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("validate"),),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter the username / mail id',
                  border: OutlineInputBorder()
              ),
              validator: (input){
                if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"!).hasMatch(input!))
                {
                  return "enter a valid name";
                }
              },
            ),
            TextFormField(
                decoration: InputDecoration(
                    hintText: 'enter the password',
                    border:OutlineInputBorder()
                ),
                validator: (input){
                  if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'!).hasMatch(input!))
                  {
                    return"enter valid password";
                  }
                }
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate());

            }, child: Text('Login')),
          ],

        ),
      ),
    );
  }
}


