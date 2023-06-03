// import 'package:flutter/material.dart';

// // Data model for the crop information
// class Crop {
//   final String title;
//   final String information;

//   Crop({required this.title, required this.information});
// }

// // List of crops
// final List<Crop> crops = [
//   Crop(
//     title: 'Crop 1',
//     information: 'Information about Crop 1',
//   ),
//   Crop(
//     title: 'Crop 2',
//     information: 'Information about Crop 2',
//   ),
//   Crop(
//     title: 'Crop 3',
//     information: 'Information about Crop 3',
//   ),
//   // Add more crops here
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Crop Prediction App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ImageListPage(),
//       routes: {
//         '/cropInfo': (context) => CropInfoPage(),
//       },
//     );
//   }
// }

// class ImageListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Crop List'),
//       ),
//       body: ListView.builder(
//         itemCount: crops.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(crops[index].title),
//             onTap: () {
              // Navigator.pushNamed(
              //   context,
              //   '/cropInfo',
              //   arguments: crops[index],
              // );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class CropInfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Crop crop = ModalRoute.of(context)!.settings.arguments as Crop;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Crop Information'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               crop.title,
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(crop.information),
//           ],
//         ),
//       ),
//     );
//   }
// }
