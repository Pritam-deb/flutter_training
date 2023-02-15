import 'package:flutter/material.dart';
import 'dart:math' as random;

void main() {
  runApp(MaterialApp(
    title: 'Project App',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
    ),
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    InheritedModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Text('A home page'),
        ],
      ),
    );
  }
}

class AvailableColorsWidget extends InheritedModel<AvailableColors> {
  final AvailableColors color1;
  final AvailableColors color2;

  const AvailableColorsWidget({
    Key? key,
    required this.color1,
    required this.color2,
    required Widget child,
  }) : super(key: key, child: child);

  static AvailableColors of(BuildContext context, AvailableColors aspect) {
    return InheritedModel.inheritFrom<AvailableColors>(context,
        aspect: aspect)!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<AvailableColors> oldWidget,
      Set<AvailableColors> dependencies) {
    // TODO: implement updateShouldNotifyDependent
    throw UnimplementedError();
  }
}

final colors = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.cyan,
  Colors.brown,
  Colors.amber,
  Colors.grey,
];

enum AvailableColors { one, two }

final color = colors.getRandomElement();

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(random.Random().nextInt(length));
}
