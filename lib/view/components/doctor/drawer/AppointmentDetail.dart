// ignore: file_names
import 'package:flutter/material.dart';

class Patient {
  String name;
  String phone;
  String email;
  DateTime appointmentDate;
  String reasonForVisit;
  String medicalHistory;
  List<String> currentMedications;
  List<String> allergies;
  String insuranceInfo;
  String paymentMethod;
  String specialRequests;
  String doctorNotes;
  List<DateTime> followUpAppointments;
  List<String> labResults;

  Patient({
    required this.name,
    required this.phone,
    required this.email,
    required this.appointmentDate,
    required this.reasonForVisit,
    required this.medicalHistory,
    required this.currentMedications,
    required this.allergies,
    required this.insuranceInfo,
    required this.paymentMethod,
    required this.specialRequests,
    required this.doctorNotes,
    required this.followUpAppointments,
    required this.labResults,
  });
}

class AppointmentDetailPage extends StatefulWidget {
   static const String route = '/appointmentdetailpage';
  @override
  _AppointmentDetailPageState createState() => _AppointmentDetailPageState();
}

class _AppointmentDetailPageState extends State<AppointmentDetailPage> {
  static const route = '/appointmentdetail';

  Patient patient = Patient(
    name: "John Doe",
    phone: "555-555-1234",
    email: "johndoe@email.com",
    appointmentDate: DateTime(2023, 2, 9, 10, 0, 0),
    reasonForVisit: "Annual physical",
    medicalHistory: "None",
    currentMedications: ["Aspirin", "Metformin"],
    allergies: ["Penicillin"],
    insuranceInfo: "ABC Insurance",
    paymentMethod: "Insurance",
    specialRequests: "None",
    doctorNotes: "Patient is in good health.",
    followUpAppointments: [DateTime(2023, 2, 16, 10, 0, 0)],
    labResults: ["Blood test", "X-Ray"],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail of Patients',
          style: TextStyle(
            fontSize: 20
          ),),
        centerTitle: true,
        backgroundColor: const Color(0xffFF4667),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Edit appointment details
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Delete appointment
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xffF4D4D4),
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xffF4D4D4),
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://via.placeholder.com/100x100',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Date: 01/01/2021',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Time: 10:00 AM',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Notes:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Patient Name: ${patient.name}\n" +
                    "Phone: ${patient.phone}\n" +
                    "Email: ${patient.email}\n" +
                    "Appointment Date: ${patient.appointmentDate}\n" +
                    "Reason for Visit: ${patient.reasonForVisit}\n" +
                    "Medical History: ${patient.medicalHistory}\n" +
                    "Current Medications: ${patient.currentMedications.join(', ')}\n" +
                    "Allergies: ${patient.allergies.join(', ')}\n" +
                    "Insurance Info: ${patient.insuranceInfo}\n" +
                    "Payment Method: ${patient.paymentMethod}\n" +
                    "Special Requests: ${patient.specialRequests}\n" +
                    "Doctor Notes: ${patient.doctorNotes}\n" +
                    "Follow-up Appointments: ${patient.followUpAppointments.join(', ')}\n" +
                    "Lab Results: ${patient.labResults.join(', ')}\n",
                    style: TextStyle(
                      fontSize: 16.0
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Prescriptions:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'This is where any prescriptions for the patient would be listed.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
