import 'package:flutter/material.dart';
import 'color_circle.dart';
import 'color_value_changer.dart';
class ColorMixerPage extends StatefulWidget {
  const ColorMixerPage({super.key});

  @override
  State<ColorMixerPage> createState() => _ColorMixerPageState();
}

class _ColorMixerPageState extends State<ColorMixerPage> {
  double red = 0;
  double green = 0;
  double blue = 0;

  void updateColor(String channel, double value) {
    setState(() {
      
      if  (channel == 'red') red = value;
      if (channel == 'green') green = value;
      if (channel == 'blue') blue = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Mixer')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ColourCircle(
              color: Color.fromARGB(255, red.toInt(), green.toInt(), blue.toInt()),
              size: 150,
            ),
            const SizedBox(height: 20),
            ColorValueChanger(
              label: 'Red',
              value: red,
              activeColor: Colors.red,
              onChanged: (value) => updateColor('red', value),
            ),
            ColorValueChanger(
              label: 'Green',
              value: green,
              activeColor: Colors.green,
              onChanged: (value) => updateColor('green', value),
            ),
            ColorValueChanger(
              label: 'Blue',
              value: blue,
              activeColor: Colors.blue,
              onChanged: (value) => updateColor('blue', value),
            ),
          ],
        ),
      ),
    );
  }
}