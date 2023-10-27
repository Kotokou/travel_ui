import 'package:flutter/material.dart';
import 'package:travel_ui/theme/app_theme.dart';

import 'views/feed_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const FeedView(),
    );
  }
}
