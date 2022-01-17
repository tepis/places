import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstStateFulWidget(),
    );
  }
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstWidget(),
      title: "Places",
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _count = 0;
    print(++_count);
    return Container(

      child: Center(

        child: Text('Hello!'),

      ),

    );
  }
}

class MyFirstStateFulWidget extends StatefulWidget {
  const MyFirstStateFulWidget({Key? key}) : super(key: key);

  @override
  _MyFirstStateFulWidgetState createState() => _MyFirstStateFulWidgetState();
}

class _MyFirstStateFulWidgetState extends State<MyFirstStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    int _count = 0;
    print(++_count);
    return Container(

      child: Center(

        child: Text('Hello!'),

      ),

    );
  }
  Type testMethod() {
    return context.runtimeType;
  }
}

