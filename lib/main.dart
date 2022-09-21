import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'splash/splash.dart';
import 'styles/style.dart';

enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  return action == Actions.Increment ? state + 1 : state;
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  final store = Store<int>(counterReducer, initialState: 0);
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);
  final Store<int> store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          backgroundColor: Color(0xFF070817),
          body: Splash(),
        ),
      ),
    );
  }
}
