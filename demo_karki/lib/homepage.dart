import 'package:flutter/material.dart';



class OtpPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<OtpPage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFFB400), // Orange background
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 60), // Extra space at the top
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Get a ride without any commission from\nKARKI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your mobile number to Login or Register',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          '+91',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Enter mobile number',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFB400),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: () {
                          // Handle submit action
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'By creating an account, you agree to our\nTerms of Service and Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



