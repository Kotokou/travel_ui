import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/places.dart';
import '../widgets/place_card.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.star),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemExtent: 350,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          final place = places[index];

          return PlaceCard(place: place);
        },
      ),
    );
  }
}
