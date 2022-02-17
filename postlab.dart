main.dart
import "package:flutter/material.dart";

import 'home.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(), //This is where we specify our homepage
     );
    }
}

home.dart
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '/developer_series.dart';
import '/developer_chart.dart';

class HomePage extends StatelessWidget {
    final List<DeveloperSeries> data = [
    DeveloperSeries(
        year: "2017",
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
        ),
  DeveloperSeries(
      year: "2018",
      developers: 5000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  DeveloperSeries(
      year: "2019",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  DeveloperSeries(
    year: "2020",
    developers: 35000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  DeveloperSeries(
    year: "2021",
    developers: 45000,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(  body: Center(
      child: DeveloperChart(data: data,),
      ),
  );
  }
}

developer_series.dart

import 'package:charts_flutter/flutter.dart' as charts;

class DeveloperSeries {
  final String year;
  final int developers;
  final charts.Color barColor;

DeveloperSeries(
  {
    required this.year,
    required this.developers,
    required this.barColor
    }
    );
}

developer_chart.dart

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '/developer_series.dart';
 
class DeveloperChart extends StatelessWidget {
 final List<DeveloperSeries> data;
 
 DeveloperChart({required this.data});
 @override
 Widget build(BuildContext context) {
   List<charts.Series<DeveloperSeries, String>> series = [
     charts.Series(
       id: "developers",
       data: data,
       domainFn: (DeveloperSeries series, _) => series.year,
       measureFn: (DeveloperSeries series, _) => series.developers,
       colorFn: (DeveloperSeries series, _) => series.barColor
       )
       ];
       return Container(
         height: 300,
         padding: EdgeInsets.all(25),
         child: Card(
           child: Padding(
             padding: const EdgeInsets.all(9.0),
             child: Column(
               children: <Widget>[
                 Text(
                   "Yearly Growth in the Flutter Community",
                   style: Theme.of(context).textTheme.bodyText1,
                   ),
                   Expanded(
                     child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
