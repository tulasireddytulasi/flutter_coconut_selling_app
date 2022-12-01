import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class IconsWidget extends StatefulWidget {
  IconsWidget(
      {Key? key,
      this.onclick,
      required this.label,
      required this.description,
      required this.icon,
      this.height = 0,
      this.labelFontSize = 12,
      this.backgroundColor = Link_Water})
      : super(key: key);

  final String label;
  final String description;
  final String icon;
  final double height;
  final double labelFontSize;
  final Color backgroundColor;
  final VoidCallback? onclick;

  @override
  _IconsWidgetState createState() => _IconsWidgetState();
}

class _IconsWidgetState extends State<IconsWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      color: widget.backgroundColor,
      child: Container(
        child: InkWell(
          hoverColor: blueGrey200,
          splashColor: blueGrey200,
          onTap: widget.onclick ?? () {},
          child: Container(
            width: (screenWidth / 2) - 40,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      // border: Border.all(color: black, width: 1),
                      ),
                  margin: EdgeInsets.only(bottom: 5),
                  child: Image(
                    image: AssetImage(widget.icon),
                    width: 80,
                    height: 80,
                    // color: black,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: widget.height,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, color: black),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    widget.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 9, color: black),
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
