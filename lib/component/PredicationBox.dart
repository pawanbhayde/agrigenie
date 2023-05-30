import 'package:agrigenie/component/HomeBox.dart';
import 'package:agrigenie/pages/predictionpage.dart';
import 'package:flutter/material.dart';

class PredicationBox extends StatelessWidget {
  const PredicationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
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
          borderRadius: BorderRadius.circular(11)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeBox(
                icon: Icons.thermostat,
                headline: '68F',
                description: 'temperature',
              ),
              HomeBox(
                icon: Icons.water_drop,
                headline: '61%',
                description: 'Humidity',
              ),
            ],
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeBox(
                icon: Icons.cloudy_snowing,
                headline: '0.0mm',
                description: 'RainFall',
              ),
              HomeBox(
                icon: Icons.science,
                headline: '7',
                description: 'ph value',
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PredictionPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff00A45F),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Predict Crop',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
