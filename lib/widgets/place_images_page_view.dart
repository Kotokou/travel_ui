import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlaceImagesPageView extends StatefulWidget {
  const PlaceImagesPageView({
    super.key,
    required this.imagesUrl,
  });

  final List<String> imagesUrl;

  @override
  State<PlaceImagesPageView> createState() => _PlaceImagesPageViewState();
}

class _PlaceImagesPageViewState extends State<PlaceImagesPageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            physics: const BouncingScrollPhysics(),
            controller: PageController(viewportFraction: .9),
            itemCount: widget.imagesUrl.length,
            itemBuilder: (context, index) {
              final imageUrl = widget.imagesUrl[index];
              final isSelected = currentIndex == index;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                margin: EdgeInsets.only(
                  right: 10,
                  top: isSelected ? 5 : 20,
                  bottom: isSelected ? 5 : 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10),
                  ],
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.black26,
                      BlendMode.darken,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imagesUrl.length,
            (index) {
              final isSelected = currentIndex == index;
              return AnimatedContainer(
                duration: kThemeAnimationDuration,
                margin: const EdgeInsets.all(2),
                color: isSelected ? Colors.black38 : Colors.black12,
                width: isSelected ? 20 : 10,
                height: 3,
              );
            },
          ),
        ),
        const Gap(10),
      ],
    );
  }
}
