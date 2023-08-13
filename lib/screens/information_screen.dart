import 'dart:io';

import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  final File? imageFile;
  const InformationScreen({super.key, this.imageFile});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SafeArea(child: Container()),
              ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.file(widget.imageFile!,
                      width: 150, height: 150, fit: BoxFit.cover)),
              Spacer(),
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
                      onPressed: () {},
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
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
