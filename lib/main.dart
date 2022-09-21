import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  return action == Actions.Increment ? state + 1 : state;
}

void main() {
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
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          backgroundColor: Color(0xaa1E1E1E),
          floatingActionButton: StoreConnector<int, VoidCallback>(
            converter: (store) {
              // Return a `VoidCallback`, which is a fancy name for a function
              // with no parameters and no return value.
              // It only dispatches an Increment action.
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) {
              return FloatingActionButton(
                // Attach the `callback` to the `onPressed` attribute
                onPressed: callback,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              );
            },
          ),
          body: Column(children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            StoreConnector<int, String>(
              converter: (store) => store.state.toString(),
              builder: (context, count) {
                return Text(
                  'Об’єкт твоєї мрії $count',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay',
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
            Image.asset(
              "assets/img/bg_1.png",
              height: 224,
              fit: BoxFit.cover,
              width: 200,
            ),
            Text('Об’єкт твоєї мрії'),
            Text(
                'Знайдіть ідеальний простір вашої мрії всього за кілька кліків'),
            InkWell(
              child: Container(
                  width: 164,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text('Досліджувати'))),
            )
          ]),
        ),
      ),
    );
  }
}
