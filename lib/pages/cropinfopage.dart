import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CropInfoPage extends StatelessWidget {
  const CropInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/appbarlogo.png', // Replace with your logo image path
          height: 30,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: VStack([
        Container(
          
        )
      ]),
    );
  }
}
