import 'package:bookingapp/data/Data.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final List<Terrain> court;
  var id, selected;
  Function select;
  _ButtonState createState() => _ButtonState();

  Button({
    required this.court,
    this.id,
    this.selected,
    required this.select,
  });
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: widget.court.map((e) {
      return RaisedButton(
        child: Text(e.nomTerrain),
        onPressed: () {
          setState(() {
            widget.select(e.id);
          });
        },
      );
    }).toList());
  }
}
