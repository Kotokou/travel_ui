import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_ui/models/travel_user.dart';
import '../animations/translate_animation.dart';
import '../data/places.dart';
import '../models/travel_place.dart';
import '../animations/animated_detail_header.dart';
import '../widgets/builder_persistent_delegate.dart';
import '../widgets/place_desc_info.dart';

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
  late ValueNotifier<double> bottomPercentNotifier;
  bool isAnimatingScroll = false;

  _scrollListener() {
    var percent =
        (_controller.position.pixels / MediaQuery.sizeOf(context).height);
    bottomPercentNotifier.value = (percent / .3).clamp(0.0, 1.0);
  }

  _isScrollingListener() {
    var percent = _controller.position.pixels / widget.screenHeight;
    if (!_controller.position.isScrollingNotifier.value) {
      if (percent < .3 && percent > .1) {
        setState(() => isAnimatingScroll = true);
        _controller
            .animateTo(
          widget.screenHeight * .3,
          duration: kThemeAnimationDuration,
          curve: Curves.decelerate,
        )
            .then((value) {
          setState(() => isAnimatingScroll = false);
        });
      }

      if (percent < .1 && percent > .0) {
        setState(() => isAnimatingScroll = true);
        _controller
            .animateTo(
          0,
          duration: kThemeAnimationDuration,
          curve: Curves.decelerate,
        )
            .then((value) {
          setState(() => isAnimatingScroll = false);
        });
      }

      if (percent < .5 && percent > .3) {
        setState(() => isAnimatingScroll = true);
        _controller
            .animateTo(
          widget.screenHeight * .3,
          duration: kThemeAnimationDuration,
          curve: Curves.decelerate,
        )
            .then((value) {
          setState(() => isAnimatingScroll = false);
        });
      }
    }
  }

  @override
  void initState() {
    _controller =
        ScrollController(initialScrollOffset: widget.screenHeight * .3);
    _controller.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.position.isScrollingNotifier
          .addListener(_isScrollingListener);
    });
    bottomPercentNotifier = ValueNotifier(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AbsorbPointer(
            absorbing: isAnimatingScroll,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: BuilderPersistentDelegate(
                    maxExtent: MediaQuery.of(context).size.height,
                    minExtent: 250,
                    builder: (percent) {
                      final bottomPercent = (percent / .3).clamp(0.0, 1.0);
                      bottomPercentNotifier.value = bottomPercent;
                      return AnimatedDetailHeader(
                        place: widget.place,
                        bottomPercent: bottomPercent,
                        topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: TranslateAnimation(
                    child: PlaceDescInfo(place: widget.place),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      itemCount: places.length,
                      itemExtent: 150,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (context, index) {
                        final place = places[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              place.imagesUrl.first,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: Gap(140)),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: bottomPercentNotifier,
            builder: (context, value, child) {
              return Positioned.fill(
                top: null,
                bottom: -130 * (1 - value),
                child: child!,
              );
            },
            child: Container(
              height: 130,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white70,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade800,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        for (var i = 0; i < TravelUser.users.length; ++i)
                          Align(
                            widthFactor: .7,
                            child: CircleAvatar(
                              radius: 16,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    TravelUser.users[i].photoUrl,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        const Gap(10),
                        const Text(
                          "Comments",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(10),
                        const Text(
                          "120",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
