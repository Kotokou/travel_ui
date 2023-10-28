import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../widgets/animated_detail_header.dart';
import '../widgets/builder_persistent_delegate.dart';

class PlaceDetailView extends StatelessWidget {
  const PlaceDetailView({
    super.key,
    required this.place,
  });

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 250,
              builder: (percent) {
                return AnimatedDetailHeader(
                  place: place,
                  bottomPercent: (percent / .3).clamp(0.0, 1.0),
                  topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(child: Placeholder()),
          const SliverToBoxAdapter(child: Placeholder()),
          const SliverToBoxAdapter(child: Placeholder()),
        ],
      ),
    );
  }
}
