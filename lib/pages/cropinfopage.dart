import 'package:agrigenie/data/cropdata.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CropInfoPage extends StatelessWidget {
  CropInfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final CropDescription? crop =
        ModalRoute.of(context)?.settings.arguments as CropDescription?;
    if (crop == null) {
      // Handle the case where crop is null
      return Scaffold(
        body: Center(
          child: Text('Crop information not available.'),
        ),
      );
    }
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
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(crop.imageUrl),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                offset: const Offset(16, 16),
                blurRadius: 40,
              ),
            ],
            border: Border.all(
              width: 1,
              color: const Color(0xff14FF00),
            ),
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ]).p16(),
    );
  }
}
