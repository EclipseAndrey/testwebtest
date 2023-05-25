import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testwebtest/models/level.dart';
import 'package:testwebtest/models/platform.dart';
import 'package:testwebtest/models/type.dart';

class LevelWidget extends StatelessWidget {
  final Level level;
  final int? indexSelect;
  const LevelWidget({this.indexSelect, required this.level, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double initSize = 100;

    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8),
      child: SizedBox(
        width: initSize,
        height: initSize * 4 + 16 * 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            level.platforms.length,
            (index) => PlatformWidget(
              platform: level.platforms[index],
              initSize: initSize,
              selected: indexSelect == null ? null : index == indexSelect,
            ),
          ),
        ),
      ),
    );
  }
}

class PlatformWidget extends StatelessWidget {
  final double initSize;
  final Platform platform;
  final bool? selected;
  const PlatformWidget({required this.selected, required this.platform, required this.initSize, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double platformH = initSize;
    switch (platform.size) {
      case 1:
        platformH = initSize;
        break;
      case 2:
        platformH = initSize * 2 + 16;
        break;
      case 3:
        platformH = initSize * 3 + 16 * 2;
        break;
      case 4:
        platformH = initSize * 4 + 16 * 3;
        break;
    }

    Color activeColor = Colors.yellow.withOpacity(0.8);

    Color color = Colors.black.withOpacity(0.2);

    switch (platform.type) {
      case LevelType.monster:
        color = Colors.black.withOpacity(0.1);
        break;
      case LevelType.increment:
        color = Colors.blue.withOpacity(0.2);
        break;
      case LevelType.upp:
        color = Colors.yellow.withOpacity(0.2);
        break;
      case LevelType.minus:
        color = Colors.red.withOpacity(0.2);
        break;
      case LevelType.dec:
        color = Colors.red.withOpacity(0.2);
        break;
      case LevelType.energy:
        color = Colors.lightBlueAccent.withOpacity(0.1);
        break;
    }

    return Opacity(
      opacity: selected ?? true ? 1 : 0.5,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          height: platformH,
          width: initSize,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: selected ?? false ? Colors.red : Colors.grey[500] ?? Colors.grey,
                spreadRadius: 1,
                offset: const Offset(4, 4),
                blurRadius: 15,
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                offset: Offset(-4, -4),
                blurRadius: 15,
              ),
            ],
          ),
          child: PlatformContent(
            platform: platform,
          ),
        ),
      ),
    );

    return const SizedBox();
  }
}

class PlatformContent extends StatelessWidget {
  final Platform platform;
  const PlatformContent({required this.platform, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black.withOpacity(0.2);
    String prefix = '';
    String imgPath = 'assets/monster.png';

    switch (platform.type) {
      case LevelType.monster:
        color = Colors.black;
        imgPath = 'assets/monster.png';
        prefix = '';
        break;
      case LevelType.increment:
        color = Colors.blue;
        prefix = '+';
        imgPath = 'assets/increment.png';

        break;
      case LevelType.upp:
        color = Colors.blue;
        prefix = '*';
        imgPath = 'assets/upp.png';

        break;
      case LevelType.minus:
        color = Colors.red;
        imgPath = 'assets/minus.png';

        prefix = '–';
        break;
      case LevelType.dec:
        color = Colors.red;
        imgPath = 'assets/dec.png';

        prefix = '/';

        break;
      case LevelType.energy:
        color = Colors.blue;
        imgPath = 'assets/energy.png';

        prefix = 'ENERGY ';
        break;
    }

    String text = platform.dmg.toString();
    if (platform.exp > 1) {
      text = (platform.dmg / (pow(1000, platform.exp - 1))).toStringAsFixed(0);
      switch (platform.exp) {
        case 2:
          text += 'k';
          break;
        case 3:
          text += 'm';
          break;
        case 4:
          text += 'b';
          break;
        case 5:
          text += 'q';
          break;
      }
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imgPath,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              prefix + text,
              textAlign: TextAlign.center,
              style: TextStyle(color: color, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
