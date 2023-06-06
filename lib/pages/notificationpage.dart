import 'package:agrigenie/component/RoundedBox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: const Color(0xffC4FFBA),
        centerTitle: true,
        title: Image.asset(
          'assets/appbarlogo.png',
          height: 30,
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: RoundedBox(
              child: ListTile(
                leading: Icon(Iconsax.tree),
                title: Text("Your Prediction Is Ready"),
                subtitle: Text("check your predicted crop"),
                trailing: Icon(Iconsax.arrow_circle_right),
              ),
            ),
          );
        },
      ),
    );
  }
}
