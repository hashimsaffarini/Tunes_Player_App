import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;
  TuneModel({required this.color, required this.sound});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

List<TuneModel> tunes = [
  TuneModel(color: Colors.red, sound: 'sounds/note1.wav'),
  TuneModel(color: Colors.orange, sound: 'sounds/note2.wav'),
  TuneModel(color: Colors.yellow, sound: 'sounds/note3.wav'),
  TuneModel(color: Colors.green, sound: 'sounds/note4.wav'),
  TuneModel(color: Colors.blue, sound: 'sounds/note5.wav'),
  TuneModel(color: Colors.indigo, sound: 'sounds/note6.wav'),
  TuneModel(color: Colors.purple, sound: 'sounds/note7.wav'),
];
