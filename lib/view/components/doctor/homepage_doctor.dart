import 'package:flutter/material.dart';
import 'package:medrecords/authentication/welcome_page.dart';
import 'package:medrecords/view/components/doctor/ViewPatientRecord.dart';
import 'package:medrecords/view/components/doctor/drawer/AppointmentDetail.dart';
import 'package:medrecords/view/components/doctor/drawer/DoctorAppointment.dart';
import 'package:medrecords/view/components/doctor/SavePatient.dart';


class DoctorHomePage extends StatefulWidget {
  static const String route = '/doctorhome';
  @override
  _DoctorHomePageState createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Doctors Page'),
        centerTitle: true,
        backgroundColor: Color(0xffFF4667),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffFF4667),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Doctor Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Patient Records'),
              onTap: () {
                // Navigate to patient records page
                 Navigator.pushNamed(context, DoctorAppointmentsPage.route);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Appointments'),
              onTap: () {
                Navigator.pushNamed(context, AppointmentDetailPage.route);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Logout
                Navigator.pushNamed(context, WelcomePage.route);
              },
            ),
          ],
        ),
      ),
      body: Container(
         color: Color(0xffF4D4D4),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 200.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to save patient record page
                  Navigator.pushNamed(context, SavePatientRecordPage.route);
                },
                child: Text(
                  'Save Patient Record',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to patient records page
                  Navigator.pushNamed(context, ViewPatientsPage.route);
                },
                child: Text(
                  'View Patient Records',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}