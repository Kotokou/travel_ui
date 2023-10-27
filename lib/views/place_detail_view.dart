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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 250,
              builder: (percent) {
                return AnimatedDetailHeader(place: place);
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
