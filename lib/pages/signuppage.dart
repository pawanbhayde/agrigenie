import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class AgricultureSignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 150,
              ),
              SizedBox(height: 40.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Implement login functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'or login with',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement login with Google functionality here
                    },
                    icon: Icon(UniconsLine.google),
                    label: Text('Google'),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement login with Facebook functionality here
                    },
                    icon: Icon(UniconsLine.facebook_f),
                    label: Text('Facebook'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
