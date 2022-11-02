import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifoodclone/pages/grocery_page.dart';
import 'package:ifoodclone/pages/home_page.dart';
import 'package:ifoodclone/pages/account_page.dart';
import 'package:ifoodclone/pages/order_page.dart';
import 'package:ifoodclone/pages/home_search_page.dart';
import 'package:ifoodclone/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      const HomePage(),
      const SearchPage(), 
      const GroceryPage(),
      const OrderPage(),
      const AccountPage(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      "assets/images/home_icon.svg",
      "assets/images/search_icon.svg",
      "assets/images/grocery_icon.svg",
      "assets/images/order_icon.svg",
      "assets/images/account_icon.svg"
    ];
    List textItems = ["Home", "Pesquisa", "Mercado", "Pedidos", "Conta"];
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: white,
          border: Border(
              top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      bottomItems[index],
                      width: 22,
                      color: pageIndex == index ? black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 10,
                          color: pageIndex == index
                              ? black
                              : black.withOpacity(0.5)),
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
