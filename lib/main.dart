import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(
        title: 'SVG Example',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: Colors.white,
              child: Transform.rotate(
                angle: (math.pi) * 1,
                child: SvgPicture.asset(
                  'assets/svg_example.svg',
                  width: 100,
                  height: 100,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            ColoredBox(
              color: Colors.white,
              child: Transform.rotate(
                angle: (math.pi) * 2,
                child: SvgPicture.asset(
                  'assets/svg_example.svg',
                  width: 100,
                  height: 100,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            ColoredBox(
              color: Colors.white,
              child: Transform.rotate(
                angle: (math.pi) * 0.5,
                child: SvgPicture.asset(
                  'assets/svg_example.svg',
                  width: 100,
                  height: 100,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            ColoredBox(
              color: Colors.white,
              child: Transform.rotate(
                angle: (math.pi) * 1.5,
                child: SvgPicture.asset(
                  'assets/svg_example.svg',
                  width: 100,
                  height: 100,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
