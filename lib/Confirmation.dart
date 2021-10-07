/// Flutter code sample for Stepper.controlsBuilder

// Creates a stepper control with custom buttons.

import 'package:flutter/material.dart';

// /// This is the stateless widget that the main application instantiates.
class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.black, child: Text("hi")),
        ),
        body: Center(
            child: Stepper(
          controlsBuilder: (BuildContext context,
              {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
            return Row(
              children: <Widget>[
                TextButton(
                  onPressed: onStepContinue,
                  child: const Text('NEXT'),
                ),
                TextButton(
                  onPressed: onStepCancel,
                  child: const Text('EXIT'),
                ),
              ],
            );
          },
          steps: const <Step>[
            Step(
              title: Text('A'),
              content: SizedBox(
                width: 100.0,
                height: 100.0,
              ),
            ),
            Step(
              title: Text('B'),
              content: SizedBox(
                width: 100.0,
                height: 100.0,
                child: Text("hello"),
              ),
            ),
          ],
        )));
  }
}
