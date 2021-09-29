import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/height_provider.dart';
import 'package:flutter_multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Weight (Kg)',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          // NOTE: MENGGUNAKAN CONSUMER
          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, _) => Slider(
          //       value: weightProvider.weight,
          //       min: 1,
          //       max: 100,
          //       divisions: 100,
          //       label: weightProvider.weight.round().toString(),
          //       onChanged: (newValue){
          //         newValue = newValue.roundToDouble();
          //         print('Weight: $newValue');
          //         weightProvider.weight = newValue;
          //       },
          //   ),
          // ),
            Slider(
              value: weightProvider.weight,
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              onChanged: (newValue){
                newValue = newValue.roundToDouble();
                print('Weight: $newValue');
                weightProvider.weight = newValue;
              },
            ),
            SizedBox(height: 20,),
            Text('Height (cm)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // NOTE: MENGGUNAKAN CONSUMER
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     value: heightProvider.height,
            //     min: 1,
            //     max: 200,
            //     divisions: 200,
            //     label: heightProvider.height.round().toString(),
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.2),
            //     onChanged: (newValue){
            //       newValue = newValue.roundToDouble();
            //       print('Weight: $newValue');
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            Slider(
              value: heightProvider.height,
              min: 1,
              max: 200,
              divisions: 200,
              label: heightProvider.height.round().toString(),
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue){
                newValue = newValue.roundToDouble();
                print('Weight: $newValue');
                heightProvider.height = newValue;
              },
            ),
            SizedBox(height: 50,),
            // NOTE: MENGGUNAKAN CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height/100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(fontSize: 20,
            //       fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
            Text(
              'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height/100, 2))).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
        ],),
      ),
    );
  }
}
