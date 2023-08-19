import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile_doc_reader/widget/textfield_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profile extends StatefulWidget {
  final File? imageFile;
  const profile({super.key, this.imageFile});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        //centerTitle: true,
        title: const Text(
          "DataSnapX",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              "assets/scanner.svg",
              color: Color.fromARGB(255, 3, 0, 92),
            )),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        physics: BouncingScrollPhysics(),
        children: [
          Stack(children: [
            Container(
                //color: Color.fromARGB(255, 3, 0, 92),
                //color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: const Offset(0, 4))
                  ],
                ),
                child: Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Results of scanning",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
            Center(
              child: Column(children: [
                SizedBox(
                  height: 80,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundImage: FileImage(widget.imageFile!),
                )
              ]),
            ),
          ]),
          const SizedBox(height: 24),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "Z1234567"),
              decoration: InputDecoration(
                labelText: 'ID', // Étiquette du TextFiel
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(
                          255, 3, 0, 92), // Couleur de la bordure
                      width: 1,
                    )),
                prefixIcon: Icon(
                  Icons.data_object,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "Zoubeir"),
              decoration: InputDecoration(
                labelText: 'First name', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "Hamouche"),
              decoration: InputDecoration(
                labelText: 'Last name', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "30/09/2001"),
              decoration: InputDecoration(
                labelText: 'Date of birth', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.date_range,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "Taza"),
              decoration: InputDecoration(
                labelText: 'Birthplace', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.place,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller:
                  TextEditingController(text: "QODS 1 BLOC 11 NR 26 TAZA"),
              decoration: InputDecoration(
                labelText: 'adress', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.place,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "M"),
              decoration: InputDecoration(
                labelText: 'Sexe', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          Container(
            height: 100, // Ajustez la hauteur souhaitée
            width: 180, // Ajustez la largeur souhaitée
            child: TextField(
              controller: TextEditingController(text: "03/09/2028"),
              decoration: InputDecoration(
                labelText: 'Valid until', // Étiquette du TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.date_range,
                  color: Color.fromARGB(255, 3, 0, 92),
                ), // Remplacez par le chemin vers votre icône SVG
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Discard"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      //backgroundColor: Colors.grey.shade50,
                      foregroundColor: Colors.blue,
                      surfaceTintColor: Colors.blue,
                      elevation: 1,
                      shadowColor: Colors.blue),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(
                            imageFile: widget
                                .imageFile), // Remplacez AutreScreen() par votre écran cible
                      ),
                    );
                  },
                  child: Text(
                    "Save",
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: Colors.blueAccent,
                      backgroundColor: Colors.blue,
                      elevation: 1,
                      foregroundColor: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
