import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../widgets/likes_and_shares_container.dart';
import '../widgets/place_images_page_view.dart';
import '../widgets/user_info_container.dart';
import 'translate_animation.dart';

class AnimatedDetailHeader extends StatelessWidget {
  const AnimatedDetailHeader({
    super.key,
    required this.place,
    required this.bottomPercent,
    required this.topPercent,
  });

  final TravelPlace place;
  final double bottomPercent;
  final double topPercent;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final imagesUrl = place.imagesUrl;
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: (topPadding + 20) * (1 - bottomPercent),
                  bottom: 160 * (1 - bottomPercent),
                ),
                child: Transform.scale(
                  scale: lerpDouble(1, 1.3, bottomPercent)!,
                  child: PlaceImagesPageView(imagesUrl: imagesUrl),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          top: null,
          child: TranslateAnimation(
            child: LikesAndSharesContainer(
              place: place,
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: TranslateAnimation(
            child: UserInfoContainer(place: place),
          ),
        ),
      ],
    );
  }
}
