import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_ui/theme/app_text_style.dart';
import '../models/travel_place.dart';
import 'gradient_status_tag.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.place,
    required this.onPressed,
  });

  final TravelPlace place;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final statusTag = place.statusTag;

    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(place.imagesUrl.first),
            fit: BoxFit.cover,
            colorFilter: const ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(place.user.photoUrl),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.user.name,
                      style: context.bodyLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Hier à 9h:10',
                      style: context.bodyLarge.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
            const Spacer(),
            Text(
              place.name,
              style: context.displayMedium.copyWith(
                color: Colors.white,
              ),
            ),
            const Gap(10),
            GradientStatusTag(statusTag: statusTag),
            const Spacer(),
            Row(
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
          ],
        ),
      ),
    );
  }
}
