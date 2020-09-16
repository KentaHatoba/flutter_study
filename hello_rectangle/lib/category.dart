import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon,
  })  : assert(name != null),
        assert(color != null),
        assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              print('I was tapped!');
            },
            borderRadius: BorderRadius.circular(
              50.0,
            ),
            splashColor: this.color,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    this.icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    this.name,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
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
