import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_color_gen/application/color_generator/color_cubit.dart';
import 'package:solid_color_gen/presentation/pages/home_page.dart';

void main() {
  runApp(const Main());
}

/// The main application widget that sets up the BlocProvider and MaterialApp.
class Main extends StatelessWidget {
  /// Creates a new instance of the Main widget.
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColorCubit(),
      child: MaterialApp(
        title: 'Color Generator',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomePage(),
      ),
    );
  }
}
