import 'package:flutter/material.dart';
class profi extends StatefulWidget {
  const profi({super.key});

  @override
  State<profi> createState() => _profileState();
}

class _profileState extends State<profi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_left),
        title: Text('menu'),
        actions: [Icon(Icons.home)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Attendence report'),
                tileColor: Colors.grey,
                trailing:Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('mock interview report'),
                tileColor: Colors.grey,
                trailing:Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('payment report'),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('All students project url'),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('leave request'),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Notifications'),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('feedack'),
                ),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Refer a friend'),
                ),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Logout'),)
          ],
        ),
      ),
    );
  }
}
