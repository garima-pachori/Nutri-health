import 'package:flutter/material.dart';

class SavePatientRecordPage extends StatefulWidget {
   static const String route = '/SavePatient';
  @override
  _SavePatientRecordPageState createState() =>
      _SavePatientRecordPageState();
}

class _SavePatientRecordPageState extends State<SavePatientRecordPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _patientNameController = TextEditingController();
  TextEditingController _patientAgeController = TextEditingController();
  TextEditingController _patientGenderController = TextEditingController();
  TextEditingController _patientDiagnosisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Save Patients record'),
        centerTitle: true,
        backgroundColor: Color(0xffFF4667),
        elevation: 0.0,
      ),
      body: Form(
        key: _formKey,
        child: Container(
        color: Color(0xffF4D4D4),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                 Image.asset(
                'assets/images/heart.png',
                height: 200.0,
              ),
                TextFormField(
                  controller: _patientNameController,
                  decoration: InputDecoration(
                    labelText: 'Patient Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the patient name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _patientAgeController,
                  decoration: InputDecoration(
                    labelText: 'Patient Age',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the patient age';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _patientGenderController,
                  decoration: InputDecoration(
                    labelText: 'Patient Gender',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the patient gender';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _patientDiagnosisController,
                  decoration: InputDecoration(
                    labelText: 'Patient Diagnosis',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the patient diagnosis';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // save patient record to database or local storage
                    }
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
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
