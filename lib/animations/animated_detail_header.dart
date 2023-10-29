import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../widgets/gradient_status_tag.dart';
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
        Hero(
          tag: place.id!,
          child: Material(
            child: ClipRRect(
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
                  Positioned(
                    top: topPadding,
                    left: -60 * (1 - bottomPercent),
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: topPadding,
                    right: -60 * (1 - bottomPercent),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: lerpDouble(-30, 140, topPercent)!
                        .clamp(topPadding + 10, 140),
                    left: lerpDouble(60, 20, topPercent)!.clamp(20, 50),
                    right: 20,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 800),
                      opacity: bottomPercent < 1 ? 0 : 1,
                      child: Text(
                        place.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: lerpDouble(20, 40, topPercent),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 200,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 800),
                      opacity: bottomPercent < 1 ? 0 : 1,
                      child: Opacity(
                        opacity: topPercent,
                        child: GradientStatusTag(
                          statusTag: place.statusTag,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          bottom: -140 * (1 - topPercent),
          child: TranslateAnimation(
            child: LikesAndSharesContainer(place: place),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 10,
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
