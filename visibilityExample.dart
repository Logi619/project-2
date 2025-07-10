import 'package:flutter/material.dart';
class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  bool isVisible= false;
  void display(){
    setState(() {
      isVisible=!isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility Widget"),
      ),
      body: Center(
        child:Column(
          children: [
            Visibility(
                visible: isVisible ,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                width: 150,
                height: 50,
                child: Text("I am Visible"))),
            SizedBox(height:10),
            ElevatedButton(onPressed: (){
              display();
            }, child: Text(isVisible?"Hide":"Show")),
          ],
        )
      ),
    );
  }
}
