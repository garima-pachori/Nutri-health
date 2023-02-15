import 'package:flutter/material.dart';
import 'package:medrecords/view/components/doctor/drawer/AppointmentDetail.dart';

class DoctorAppointmentsPage extends StatefulWidget {
  static const String route = '/appointmentpage';
  @override
  _DoctorAppointmentsPageState createState() => _DoctorAppointmentsPageState();
}

class _DoctorAppointmentsPageState extends State<DoctorAppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Page'),
        centerTitle: true,
        backgroundColor: Color(0xffFF4667),
        elevation: 0.0,
      ),
      body: Container(
        color: Color(0xffF4D4D4),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by patient name',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Patient Name',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Date: 01/01/2021',
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Time: 10:00 AM',
                            ),
                          ],
                        ),
                        Container(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to appointment detail page
                              Navigator.pushNamed(context, AppointmentDetailPage.route);

                            },
                            // color: Colors.blue,
                            // textColor: Colors.white,
                            child: Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
