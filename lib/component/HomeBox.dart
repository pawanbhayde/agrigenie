import 'package:flutter/material.dart';

class HomeBox extends StatelessWidget {
  const HomeBox({
    super.key,
    required this.icon,
    required this.headline,
    required this.description,
  });

  final IconData icon;
  final String headline;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffC4FFBA)),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headline,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 15),
            )
          ],
        )
      ],
    );
  }
}
