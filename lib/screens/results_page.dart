import 'package:bmi/constants/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult,required this.bmiInterpretation,required this.resultText});

  final String bmiResult;
  final String bmiInterpretation;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR', textAlign: TextAlign.center),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
                child: Text('Your Result', style: kTitleTextStyle,),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(resultText, style: kResultTextStyle),
                    Text(bmiResult, style: kBMITextStyle),
                    Text(
                      bmiInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonText: "RE-CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}
