
import 'package:ifoodclone/json/home_page_json.dart';
import 'package:ifoodclone/pages/grocery_page.dart';
import 'package:ifoodclone/pages/root_app.dart';
import 'package:ifoodclone/pages/settings_page.dart';
import 'package:ifoodclone/pages/store_detail_page.dart';
import 'package:ifoodclone/theme/colors.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';
import 'package:ifoodclone/theme/styles.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
 
  // void updateList(String value){
  //   //fuction that filter the list
  // }
  @override
    Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.green,
        //   ),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SettingsPage()));
            },
          ),
        ],
      ), 
      
      body: ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Detalhe do Pedido",
                style: profileName,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Mary's Breakfast Burritos", style: TextStyle(
             fontSize: 18, fontWeight: FontWeight.w600),
            ),
            
          ],
          
          ),
          
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Burrito Premium de Calabresa", style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          ],        
          ),
        ),

        Row(
          children: [           
            const SizedBox(
              width: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  firstMenu[0]['delivery_fee'],
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Suco de Laranja Natural", style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          ],        
          ),
        ),
                Row(
          children: [           
            const SizedBox(
              width: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  firstMenu[0]['delivery_fee'],
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
                Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Burrito de Frango com Catupiry", style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          ],        
          ),
        ),
                Row(
          children: [           
            const SizedBox(
              width: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  firstMenu[0]['delivery_fee'],
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
        
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Total: \$7.47", style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w800),
          ),
          ],        
          ),
        ),
        const SizedBox(
              height: 30,
            ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 40,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1],
                            colors: [
                              Color.fromARGB(255, 113, 245, 36),
                              Color.fromARGB(255, 20, 190, 111),
                            ],
              ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: const <Widget>[
                  //     Center(
                        child: const Text(
                          "Finalizar Compra",
                          textAlign: TextAlign.center,
                            style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                  //     ),
                  //   ],
                  // ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RootApp(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: TextButton(
                child: const Text(
                  "Adicionar mais itens no meu pedido",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GroceryPage(),
                    ),
                  );
                },
              ),
            ),
  SizedBox(height: size.height * 0.1),
  // Free space  10% of total height
      ],
    ),
  );
  }
}