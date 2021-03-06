import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'locator.dart';
import 'model/app_state_model.dart';

void main() {
  // Setup dependency injection
  setupLocator();
  return runApp(
      ChangeNotifierProvider<AppStateModel>(
        create: (_) => AppStateModel()..loadProducts(),
        child: CupertinoStoreApp(),
      )
  );
}
