import 'package:flutter/material.dart';

import '../models/travel_place.dart';

class AnimatedDetailHeader extends StatelessWidget {
  const AnimatedDetailHeader({
    super.key,
    required this.place,
  });

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: place.imagesUrl.length,
      itemBuilder: (context, index) {
        final imageUrl = place.imagesUrl[index];
        return Image.network(
          imageUrl,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
