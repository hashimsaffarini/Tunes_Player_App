import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/views/widgets/tune_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 52, 52, 52),
        centerTitle: true,
        title: Text(
          'Tunes Player App',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map((e) => TuneItemWidget(
                  tune: e,
                ))
            .toList(),
      ),
    );
  }
}

// List<TuneItemWidget> getTuneItems() {
//   List<TuneItemWidget> tuneItems = [];
//   for (var val in colors) {
//     tuneItems.add(TuneItemWidget(color: val));
//   }
//   return tuneItems;
// }
