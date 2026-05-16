import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/video_player/video_player_page.dart';

void main() {
  testWidgets('VideoPlayerPage should display correct title and body', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: VideoPlayerPage(),
    ));

    expect(find.text('Video Player'), findsOneWidget);
    expect(find.text('Video Player Page'), findsOneWidget);
  });
}
