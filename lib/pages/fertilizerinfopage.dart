import 'package:agrigenie/component/RoundedBox.dart';
import 'package:agrigenie/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FertilizerInfoPage extends StatelessWidget {
  FertilizerInfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // final CropDescription? crop =
    //     ModalRoute.of(context)?.settings.arguments as CropDescription?;
    // if (crop == null) {
    //   // Handle the case where crop is null
    //   return Scaffold(
    //     body: Center(
    //       child: Text('Crop information not available.'),
    //     ),
    //   );
    // }
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
      body: SingleChildScrollView(
        child: VStack([
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://m.media-amazon.com/images/I/71yy+QZTCHL._SX466_.jpg"),
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
          const SizedBox(height: 20),
          RoundedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "NPK",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "NPK fertilizer is a type of fertilizer that contains three primary nutrients: nitrogen (N), phosphorus (P), and potassium (K). It is commonly used in agricultural practices to promote plant growth and improve crop yield.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff00A45F),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
            ],
          )),
          const Text(
            "Recommended Crops",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ).p16(),
          const RecommandedCrop(),
        ]).p16(),
      ),
    );
  }
}
