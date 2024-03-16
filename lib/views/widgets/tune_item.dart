import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';

class TuneItemWidget extends StatelessWidget {
  final TuneModel tune;
  const TuneItemWidget({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
           tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
