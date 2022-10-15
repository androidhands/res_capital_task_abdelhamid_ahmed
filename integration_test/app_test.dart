import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:res_capital_task_abdelhamid_ahmed/core/app_colors/app_color.dart';
import 'package:res_capital_task_abdelhamid_ahmed/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('app_test', () {
    var cartBtn = find.byKey(const Key('cart_btn'));
    var incrementBtn = find.byKey(const Key('increment_btn0'));
    var decrementBtn = find.byKey(const Key('decrement_btn0'));
    var totalItemPriceTxt = find.text('1');

    testWidgets(
        'moving to cart screen and testing if it can increment or decrement item count',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.tap(cartBtn);
      await tester.pumpAndSettle();
      await tester.tap(incrementBtn);
      await tester.pumpAndSettle();
      expect(
          totalItemPriceTxt,
         findsOneWidget);
    });
  });
}
