import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlaceImagesPageView extends StatelessWidget {
  const PlaceImagesPageView({
    super.key,
    required this.imagesUrl,
  });

  final List<String> imagesUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: PageController(viewportFraction: .9),
            itemCount: imagesUrl.length,
            itemBuilder: (context, index) {
              final imageUrl = imagesUrl[index];
              return Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
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
            imagesUrl.length,
            (index) => Container(
              margin: const EdgeInsets.all(2),
              color: Colors.black,
              width: 10,
              height: 3,
            ),
          ),
        ),
        const Gap(10),
      ],
    );
  }
}
