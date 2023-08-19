import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_doc_reader/screens/profile.dart';

class InformationScreen extends StatefulWidget {
  final File? imageFile;

  const InformationScreen({super.key, this.imageFile});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  bool _isImageFullscreen =
      false; // État pour contrôler l'affichage de l'image en plein écran

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add, color: Colors.blue, size: 35),
                            onPressed: () async {
                              //selectDocument(context);
                              //selectTypeDocument(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        'Add more document',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You can add more document by importing or scanning with your camera",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 0.5,
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SafeArea(
                              child: Container(
                            height: 20,
                          )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isImageFullscreen = true;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                widget.imageFile!,
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //Spacer(),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      shadowColor: Colors.blueAccent,
                                      backgroundColor: Colors.blue,
                                      elevation: 1,
                                      foregroundColor: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  if (_isImageFullscreen) // Afficher l'image en plein écran si _isImageFullscreen est vrai
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isImageFullscreen = false;
                        });
                      },
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                        child: Center(
                          child: Image.file(
                            widget.imageFile!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ));
  }
}
