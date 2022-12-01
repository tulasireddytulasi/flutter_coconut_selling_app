import 'package:coconut/utils/assets_path.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class MaintenanceCard extends StatelessWidget {
  const MaintenanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 8, top: 5, bottom: 8, right: 8),
        // margin:
        //     EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 13),
        decoration: const BoxDecoration(
          color: Link_Water,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              //   decoration: BoxDecoration(
              //         border: Border.all(color: black, width: 1),
              //       ),
              margin: const EdgeInsets.only(left: 2),
              child: const Image(
                image: AssetImage(coconutTree),
                width: 30,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Service",
                    style: TextStyle(
                        fontSize: 18, color: black, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    "Upgrade to greater reliability, comfort, efficiency, \ncode compliance, and safety.",
                    style: TextStyle(
                        fontSize: 10,
                        color: black,
                        fontFamily: 'MontserratRegular'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
