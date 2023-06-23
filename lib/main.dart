import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

const seedColor = Color.fromARGB(255, 147, 229, 250);
const surfaceColor = Color.fromARGB(255, 42, 51, 59);
const scaffoldBackgroundColor = Color.fromARGB(255, 50, 58, 60);
final colorScheme = ColorScheme.fromSeed(
  seedColor: seedColor,
  brightness: Brightness.dark,
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Groceries',
        theme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: seedColor,
            brightness: Brightness.dark,
            surface: surfaceColor,
          ),
          scaffoldBackgroundColor: scaffoldBackgroundColor,
        ),
        home: const GroceryList(),
      );
}
