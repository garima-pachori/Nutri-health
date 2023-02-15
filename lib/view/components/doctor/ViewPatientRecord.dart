import 'package:flutter/material.dart';

class ViewPatientsPage extends StatefulWidget {
  static const String route = '/ViewPatient';
  @override
  _ViewPatientsPageState createState() => _ViewPatientsPageState();
}

class _ViewPatientsPageState extends State<ViewPatientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('View Patients record'),
        centerTitle: true,
        backgroundColor: Color(0xffFF4667),
        elevation: 0.0,
      ),
      body: Container(
        color: Color(0xffF4D4D4),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Garima Pachori"),
              subtitle: Text("age: 20, sex: Female"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Hardik Sharma"),
              subtitle: Text("age: 20, sex: Male"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Saarthak Srivastava"),
              subtitle: Text("age: 20, sex: Male"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Shreeja Pandey"),
              subtitle: Text("age: 20, sex: Female"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Ayush Thankur"),
              subtitle: Text("age: 20, sex: Male"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
