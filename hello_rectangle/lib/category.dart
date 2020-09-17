import 'package:flutter/material.dart';
import 'package:hello_rectangle/converter_route.dart';
import 'package:hello_rectangle/unit.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;
  final List<Unit> units;

  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.icon,
      @required this.units})
      : assert(name != null),
        assert(color != null),
        assert(icon != null),
        assert(units != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 1.0,
              title: Text(
                name,
                style: Theme.of(context).textTheme.display1,
              ),
              centerTitle: true,
              backgroundColor: color,
            ),
            body: ConverterRoute(
              color: color,
              units: units,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              _navigateToConverter(context);
            },
            borderRadius: _borderRadius,
            highlightColor: color,
            splashColor: color,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
