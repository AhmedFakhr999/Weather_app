import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Alexandria',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Text('updated at 23:46'),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.all(40),
                      child: Icon(Icons.cloud_circle)),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text('17'),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Text('maxtemp'),
                        Text('mintemp'),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
