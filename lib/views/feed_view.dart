import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/travel_nav_bar_item.dart';
import '../data/places.dart';
import '../widgets/place_card.dart';
import '../widgets/travel_nav_bar.dart';
import 'place_detail_view.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.star)),
        ],
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemExtent: 350,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight + 20),
        itemBuilder: (context, index) {
          final place = places[index];
          return PlaceCard(
            place: place,
            onPressed: () async {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (_, animation, __) => FadeTransition(
                    opacity: animation,
                    child: PlaceDetailView(place: place),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_on),
      ),
      extendBody: true,
      bottomNavigationBar: TravelNavBar(
        onTap: (index) {},
        items: [
          TravelNavBarItem(
            icon: CupertinoIcons.chat_bubble,
            selectedIcon: CupertinoIcons.chat_bubble_fill,
          ),
          TravelNavBarItem(
            icon: CupertinoIcons.square_split_2x2,
            selectedIcon: CupertinoIcons.square_split_2x2_fill,
          ),
        ],
        currentIndex: 1,
      ),
    );
  }
}
