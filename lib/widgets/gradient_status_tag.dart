import 'package:flutter/material.dart';
import 'package:travel_ui/theme/app_text_style.dart';
import '../models/status_tag.dart';

class GradientStatusTag extends StatelessWidget {
  const GradientStatusTag({
    super.key,
    required this.statusTag,
  });

  final StatusTag statusTag;

  @override
  Widget build(BuildContext context) {
    String text;
    List<Color> colors;
    switch (statusTag) {
      case StatusTag.popular:
        text = 'Popular Places';
        colors = [Colors.amber, Colors.orange.shade600];
        break;
      case StatusTag.event:
        text = 'Event';
        colors = [Colors.cyan, Colors.blue.shade600];
        break;
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: context.titleMedium.copyWith(color: Colors.white),
      ),
    );
  }
}
