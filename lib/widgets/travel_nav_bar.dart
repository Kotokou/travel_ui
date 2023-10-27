import 'package:flutter/material.dart';
import 'travel_nav_bar_item.dart';

class TravelNavBar extends StatelessWidget {
  const TravelNavBar({
    super.key,
    required this.items,
    required this.onTap,
    this.currentIndex = 0,
  }) : assert(items.length == 2, '');

  final List<TravelNavBarItem> items;
  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _NavPainter(),
      child: Container(
        height: kToolbarHeight,
        child: Row(
          children: List.generate(
            items.length,
            (index) => Expanded(
              child: Icon(
                currentIndex != index
                    ? items[index].icon
                    : items[index].selectedIcon,
                color: currentIndex == index
                    ? Theme.of(context).primaryColor
                    : null,
              ),
            ),
          )..insert(1, const Spacer()),
        ),
      ),
    );
  }
}

class _NavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    final h5 = h * .5;
    final w5 = w * .5;
    final h6 = h * .6;

    final path = Path()
      ..lineTo(w5 - 80, 0)
      ..cubicTo((w5 - 40), 0, (w5 - 50), h5, w5 - 3, h6)
      ..lineTo(w5, h)
      ..lineTo(w, h)
      ..lineTo(w, 0)
      ..lineTo(w5 + 80, 0)
      ..cubicTo((w5 + 40), 0, (w5 + 50), h5, w5 + 3, h6)
      ..lineTo(w5 - 3, h6)
      ..lineTo(w5, h)
      ..lineTo(0, h);

    canvas.drawShadow(path, Colors.black26, 10, false);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
