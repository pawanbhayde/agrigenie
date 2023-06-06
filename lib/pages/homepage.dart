import 'package:agrigenie/component/PredicationBox.dart';
import 'package:agrigenie/component/UserAndLocation.dart';
import 'package:agrigenie/component/carousel.dart';
import 'package:agrigenie/data/cropdata.dart';
import 'package:agrigenie/data/fertilizerdata.dart';
import 'package:agrigenie/pages/notificationpage.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
          'assets/appbarlogo.png', // Replace with your logo image path
          height: 30,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithDotsPage(imgList: const [
              'assets/1.png',
              'assets/2.png',
              'assets/3.png',
            ]),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAndLocation(),
                SizedBox(height: 20),
                PredicationBox(),
                SizedBox(height: 20),
                Text(
                  "Recommended Crops",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ).p16(),
            const RecommandedCrop(),
            const Text(
              "Recommended Fertilisers",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ).p16(),
            const RecommandedFertilisers(),
          ],
        ),
      ),
    );
  }
}

class RecommandedCrop extends StatelessWidget {
  const RecommandedCrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cropDescriptions.length,
        itemBuilder: (BuildContext context, int index) {
          CropDescription crop = cropDescriptions[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/cropInfo',
                  arguments: cropDescriptions[index],
                );
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(crop.imageUrl))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          crop.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ).asGlass(
                      tintColor: Colors.transparent,
                      clipBorderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RecommandedFertilisers extends StatelessWidget {
  const RecommandedFertilisers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fertilizerDescriptions.length,
        itemBuilder: (BuildContext context, int index) {
          FertilizerDescription fertilizer = fertilizerDescriptions[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/fertilizerInfo',
                  arguments: cropDescriptions[index],
                );
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(fertilizer.imageUrl))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          fertilizer.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ).asGlass(
                      tintColor: Colors.transparent,
                      clipBorderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
