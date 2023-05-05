import 'package:flutter_boilerplate_to_mvp/app_widget.dart';
import 'package:flutter_boilerplate_to_mvp/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(AppWidget());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
