import 'package:coconut/screens/navigation/navigation.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  _LottieScreenState createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieController;

  @override
  void initState() {
    super.initState();
    lottieController = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Implementation"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                "assets/lottie/tick_mark_animation.json",
                repeat: false,
                height: 300,
                width: 300,
                animate: true,
                // onLoaded: (composition) {
                //   lottieController.duration = const Duration(seconds: 4);
                //   lottieController.repeat(
                //       period: const Duration(seconds: 5), max: 2, min: 1);
                // },
              ),
              const SizedBox(
                height: 10,
              ),
              // Lottie.asset("assets/lottie/check_animation.json",
              //     height: 300, width: 300, animate: true),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    BottomNavbar.routeName, (Route<dynamic> route) => false),
                child: const Text("Your Order booked"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please pay 20,000 Rs",
                style: TextStyle(fontSize: 16, color: black),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showSuccessfulDialog() => showDialog(
      context: context,
      builder: (context) => Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  "assets/lottie/tick_mark_animation.json",
                  repeat: false,
                  height: 200,
                  width: 200,
                  controller: lottieController,
                  onLoaded: (composition) {
                    lottieController.duration = const Duration(seconds: 4);
                    lottieController.repeat(
                        period: const Duration(seconds: 5), max: 2, min: 1);
                  },
                ),
                const Center(
                  child: Text(
                    "Done!",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 21),
              ],
            ),
          ));
}
