import 'package:flutter/material.dart';
class cont extends StatefulWidget {
  const cont({super.key});

  @override
  State<cont> createState() => _contState();
}

class _contState extends State<cont> {
  bool _show = false;
  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2= TextEditingController();
  TextEditingController ctrl3= TextEditingController();



  a()
  {
    setState(() {
      ctrl.text.isNotEmpty && ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty?_show = true : _show =false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TextFormField(decoration:InputDecoration(
          icon: Icon(Icons.mail),
          hintText: 'enter the mail',
          border: OutlineInputBorder()
        ),
          controller: ctrl,
          onChanged:(i){
          a();

          }),
          TextFormField(decoration:
            InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'enter the password',
              border: OutlineInputBorder()
            ),
            controller: ctrl1,
            onChanged: (i){
           a();
            }
          ),TextFormField(decoration:
          InputDecoration(
              icon: Icon(Icons.percent),
              hintText: 'enter the mobilenumber',
              border: OutlineInputBorder()
          ),
              controller: ctrl2,
              onChanged: (i){
              a();
              }
          ),TextFormField(decoration:
          InputDecoration(
              icon: Icon(Icons.safety_check),
              hintText: 'enter the address',
              border: OutlineInputBorder()
          ),
              controller: ctrl3,
              onChanged: (i){
               a();
              }
          ),
        Visibility(visible: _show,
              child: ElevatedButton(onPressed: (){}, child: Text("login")))
        ],
      ),
    );
  }
}
