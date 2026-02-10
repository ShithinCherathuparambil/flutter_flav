import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        title: 'Flutter Flavor Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flavor: ${FlavorConfig.instance.name}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flavor: ${FlavorConfig.instance.name}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text('Base URL: ${FlavorConfig.instance.variables["baseUrl"]}'),
          ],
        ),
      ),
    );
  }
}
