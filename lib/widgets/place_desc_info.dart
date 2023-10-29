import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_ui/theme/app_text_style.dart';

import '../models/travel_place.dart';

class PlaceDescInfo extends StatelessWidget {
  const PlaceDescInfo({
    super.key,
    required this.place,
  });

  final TravelPlace place;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.black26),
              Flexible(
                child: Text(
                  place.locationDesc!,
                  style: context.bodyLarge.copyWith(color: Colors.blue),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          const Gap(10),
          Text(place.description!),
          const Gap(10),
          Text(place.description!),
          const Gap(10),
          const Text(
            "PLACES IN THIS COLLECTION",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
