import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../animations/animated_detail_header.dart';
import '../widgets/builder_persistent_delegate.dart';

class PlaceDetailView extends StatefulWidget {
  const PlaceDetailView({
    super.key,
    required this.place,
    required this.screenHeight,
  });

  final TravelPlace place;
  final double screenHeight;

  @override
  State<PlaceDetailView> createState() => _PlaceDetailViewState();
}

class _PlaceDetailViewState extends State<PlaceDetailView> {
  late ScrollController _controller;
  @override
  void initState() {
    _controller =
        ScrollController(initialScrollOffset: widget.screenHeight * .3);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 250,
              builder: (percent) {
                return AnimatedDetailHeader(
                  place: widget.place,
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
