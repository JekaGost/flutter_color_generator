import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/color_generator/color_cubit.dart';
import '../../application/color_generator/color_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      builder: (context, state) {
        return Scaffold(
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.read<ColorCubit>().changeColor(),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              color: state.backgroundColor,
              child: const Center(
                child: Text(
                  'Hello there',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
