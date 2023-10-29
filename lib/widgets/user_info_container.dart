import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_ui/theme/app_text_style.dart';
import '../models/travel_place.dart';

class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({
    super.key,
    required this.place,
  });

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      height: 70,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(place.user.photoUrl),
          ),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                place.user.name,
                style: context.bodyLarge,
              ),
              Text(
                'Hier à 9h:10',
                style: context.bodyMedium.copyWith(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.blue.shade600,
              textStyle: context.titleMedium,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text('+Follow'),
          ),
        ],
      ),
    );
  }
}
