import 'package:flutter/cupertino.dart';

class TranslateAnimation extends StatelessWidget {
  const TranslateAnimation({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1, end: 0),
      curve: Curves.easeInOutBack,
      duration: const Duration(milliseconds: 800),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 100 * value),
          child: child!,
        );
      },
      child: child,
    );
  }
}
