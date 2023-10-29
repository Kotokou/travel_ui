import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/theme/app_text_style.dart';
import '../models/travel_place.dart';

class LikesAndSharesContainer extends StatelessWidget {
  const LikesAndSharesContainer({
    super.key,
    required this.place,
  });

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              textStyle: context.titleMedium,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(CupertinoIcons.heart, color: Colors.black),
            label: Text(
              place.likes.toString(),
              style: context.bodyLarge.copyWith(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              textStyle: context.titleMedium,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(CupertinoIcons.reply, color: Colors.black),
            label: Text(
              place.shared.toString(),
              style: context.bodyLarge.copyWith(color: Colors.black),
            ),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              foregroundColor: Colors.blue.shade600,
              textStyle: context.titleMedium,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            icon: const Icon(
              Icons.check_circle_outlined,
              size: 26,
              color: Colors.white,
            ),
            label: Text(
              'Checkin',
              style: context.bodyLarge.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
