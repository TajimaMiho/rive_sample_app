import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CatApp extends StatelessWidget {
  CatApp({super.key});
  StateMachineController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: RiveAnimation.asset(
          'assets/cat.riv',
          fit: BoxFit.fitHeight,
          stateMachines: const ['state'],
          onInit: ((artboard) {
            controller = StateMachineController.fromArtboard(
                artboard, 'State Machine 1');
            if (controller == null) return;
            artboard.addController(controller!);
          }),
        ),
      ),
    );
  }
}
