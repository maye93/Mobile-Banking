import 'package:flutter/material.dart';
// import 'package:practice/main.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  List<Step> steps = [
    Step(
      title: const Text("Step"),
      isActive: true,
      state: StepState.complete,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text("Blah blah",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Glacial Bold',
                  color: const Color(0xFFFE971A),
                  fontSize: 25,
                )),
          ),
          Container(
              alignment: Alignment.topLeft,
              child: Text("Blah blah",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFFE971A),
                    fontSize: 25,
                  )))
        ],
      ),
    ),
    Step(
        isActive: true,
        state: StepState.complete,
        title: const Text("Test"),
        content: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text("Blah blah",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Glacial Bold',
                    color: const Color(0xFFFE971A),
                    fontSize: 25,
                  )),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text("Blah blah",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Glacial Bold',
                      color: const Color(0xFFFE971A),
                      fontSize: 25,
                    )))
          ],
        ))
  ];
  StepperType stepperType = StepperType.horizontal;

  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  switchStepType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.vertical
        : stepperType = StepperType.horizontal);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff231D25),
          centerTitle: true,
          title: Text("Confirmation"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stepper(
                steps: steps,
                currentStep: currentStep,
                onStepContinue: next,
                onStepCancel: cancel,
                onStepTapped: (step) => goTo(step),
              ),
            )
          ],
        ));
  }
}
