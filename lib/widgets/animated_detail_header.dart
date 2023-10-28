import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/theme/app_text_style.dart';
import '../models/travel_place.dart';
import 'place_images_page_view.dart';

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
          child: Padding(
            padding: EdgeInsets.only(
              top: (topPadding + 20) * (1 - bottomPercent),
              bottom: 160 * (1 - bottomPercent),
            ),
            child: Transform.scale(
              scale: lerpDouble(1, 1.3, bottomPercent)!,
              child: PlaceImagesPageView(imagesUrl: imagesUrl),
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            height: 140,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const StadiumBorder(),
                  ),
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                  label: Text(
                    place.likes.toString(),
                    style: context.bodyLarge.copyWith(color: Colors.white),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const StadiumBorder(),
                  ),
                  icon: const Icon(
                    CupertinoIcons.reply,
                    color: Colors.white,
                  ),
                  label: Text(
                    place.shared.toString(),
                    style: context.bodyLarge.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            height: 70,
          ),
        ),
      ],
    );
  }
}
