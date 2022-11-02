// ignore: import_of_legacy_library_into_null_safe
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ifoodclone/pages/home_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ifoodclone/pages/settings_page.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
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
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SettingsPage()));
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
          child: ListView(
            children: [
              const Text(
                "Editar Perfil",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/profile_photo.jpg")
                      ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              buildTextField("Nome Completo", "Keren Moreno", false),
              buildTextField("E-mail", "kerenmoreno@unasp.com", false),
              buildTextField("Password", "********", true),
              buildTextField("Localização", "Hortolândia", false),
              const SizedBox(
                height: 35,
              ),
              Container(
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
                          "Salvar",
                          textAlign: TextAlign.center,
                            style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                  //     ),
                  //   ],
                  // ),
                  onPressed: () {
                    const AlertDialog(actions: [Text("Alterações salvas com sucesso!")],
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 35,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.red,
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
                          "Cancelar",
                          textAlign: TextAlign.center,
                            style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                  //     ),
                  //   ],
                  // ),
                  onPressed: () {
                    log("Operação cancelada");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const HomePage(),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //        Container(
            //           alignment: Alignment.centerLeft,
            //           decoration: const BoxDecoration(
            //           color: Colors.red,
            //           borderRadius: BorderRadius.all(
            //               Radius.circular(5),
            //             ),
            //           ),
            //           child: SizedBox.expand(
            //             child: TextButton(
            //               child: const Text(
            //                 "Cancelar",
            //                 textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     letterSpacing: 2.2,
            //                     color: Colors.black
            //                 ),
            //             ),
            //       //     ),
            //       //   ],
            //       // ),
            //       onPressed: () {
            //         // ignore: avoid_print
            //         // print("Operação de alterações cancelada");
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const HomePage(),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // Container(
            //           alignment: Alignment.centerLeft,
            //           decoration: const BoxDecoration(
            //           color: Colors.green,
            //           borderRadius: BorderRadius.all(
            //               Radius.circular(5),
            //             ),
            //           ),
            //           child: SizedBox.expand(
            //             child: TextButton(
            //               child: const Text(
            //                 "Salvar",
            //                 textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     letterSpacing: 2.2,
            //                     color: Colors.white
                                
            //                 ),
            //             ),
 
            //       onPressed: () {
            //         // ignore: avoid_print
            //         print("Alterações salvas");
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const HomePage(),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),                     
            //     ],
            //   )
            ],
          ),
        ),
      );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
             )
            ),
          ),
    );
  }
}
