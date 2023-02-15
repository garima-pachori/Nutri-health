import 'package:flutter/material.dart';
import 'package:medrecords/view/components/doctor/homepage_doctor.dart';
import 'package:medrecords/view/homepage.dart';

class NavigationPage extends StatelessWidget {
  static const route = '/navigation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Page'),
        centerTitle: true,
        backgroundColor: const Color(0xffFF4667),
        elevation: 0.0,
      ),
      body: Container(
        color: const Color(0xffF4D4D4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/heart.png',
                height: 250.0,
              ),
              const Text(
                'Who are you?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  )
                ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, Homepage.route);
                },
                child: const Text(
                  'Patient',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  )
                  ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, DoctorHomePage.route);
                },
                child: const Text(
                  'Doctor',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
