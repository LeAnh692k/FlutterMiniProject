import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(40.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          // borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset('assets/images/management.png'), // Your illustration image
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'Welcome to Go Task',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'A workspace to over 10 Million influencers around the global of the world.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100.0),
            ElevatedButton(
              onPressed: () {
                // Add navigation or action here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue, backgroundColor: Colors.lightBlue,
                // padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
                textStyle: const TextStyle(fontSize: 16.0),


              ),
              child: const SizedBox(width: double.infinity,
                child: Text(
                  "Let's Start",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                  ),),
              )
            ),
          ],
        ),
      ),
    );
  }
}



