import 'package:coconut/screens/cart/widgets/billing_details_widget.dart';
import 'package:coconut/screens/cart/widgets/cancellation_details_widget.dart';
import 'package:coconut/screens/cart/widgets/cart_items_list_widget.dart';
import 'package:coconut/screens/cart/widgets/coupons_widget.dart';
import 'package:coconut/screens/cart/widgets/delivery_address_card.dart';
import 'package:coconut/screens/cart/widgets/delivery_time_widget.dart';
import 'package:coconut/screens/cart/widgets/free_delivery_card_widget.dart';
import 'package:coconut/screens/navigation/navigation.dart';
import 'package:coconut/utils/colors.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    Locale myLocale = Localizations.localeOf(context);
    print('my locale ${myLocale}');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushNamedAndRemoveUntil(
            BottomNavbar.routeName, (Route<dynamic> route) => false);
        return true;
      },
      child: Scaffold(
        backgroundColor: lynxWhite,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: blueGrey200,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                BottomNavbar.routeName, (Route<dynamic> route) => false),
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "My Cart",
            style: TextStyle(fontSize: 18, color: white),
          ),
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 20),
                      FreeDeliveryCard(),
                      SizedBox(height: 16),
                      Delivery(),
                      SizedBox(height: 16),
                      CouponsWidget(),
                      SizedBox(height: 16),
                      CardItemsWidget(),
                      SizedBox(height: 16),
                      BillingDetailsWidget(),
                      SizedBox(height: 16),
                      Delivery(),
                      SizedBox(height: 16),
                      CancellationInfoWidget(),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: DeliveryAddressCard(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
