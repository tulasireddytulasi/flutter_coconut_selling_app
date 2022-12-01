import 'package:coconut/screens/account/widget/right_arrow_icon.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList(
      {Key? key,
      required this.label,
      this.subLabel,
      this.showRightArrow = true,
      this.onclick})
      : super(key: key);

  final bool showRightArrow;
  final String label;
  final String? subLabel;
  final VoidCallback? onclick;

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onclick ?? () {},
      hoverColor: blueGrey200,
      splashColor: blueGrey200,
      child: Container(
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.label,
                  style: const TextStyle(color: black, fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (widget.subLabel != null && widget.subLabel!.isNotEmpty)
                  Text(
                    widget.subLabel!,
                    style: const TextStyle(color: black, fontSize: 10),
                  ),
              ],
            ),
            if (widget.showRightArrow) const RightArrowIcon(),
          ],
        ),
      ),
    );
  }
}
