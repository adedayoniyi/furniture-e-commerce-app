import 'package:flutter/material.dart';

class SimilarCard extends StatelessWidget {
  final String imagePath2;
  const SimilarCard({
    Key? key,
    required this.imagePath2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imagePath2)),
    );
  }
}
