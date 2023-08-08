import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              child: SvgPicture.asset("lib/assets/scanner.svg")),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Documents",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),*/
              Text(""),
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
                            onPressed: () {
                              selectDocument(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        'Upload your document',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You can upload a document by importing or scanning with your camera",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 75,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          "lib/assets/secure.svg",
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Privacy",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Leases and assurance",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "lib/assets/notes.svg",
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Terms and Services",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "Agreements & Privacy policies",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "lib/assets/settings.svg",
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Effecienty",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "Quality of result",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.4,
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "lib/assets/scanner.svg",
                        width: 100,
                        height: 100,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "DataSnapX is a powerful and user-friendly mobile app that enables users to quickly and accurately scan various types of documents, including identity cards, passports, and cheques",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Future<dynamic> selectDocument(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  focusColor: Colors.blue,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "lib/assets/camera.svg",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Scan from camera")
                    ],
                  ),
                  onTap: () {
                    //scanCamera(context);
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "lib/assets/gallery.svg",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Scan from camera")
                    ],
                  ),
                  onTap: () {
                    //scanGallery(context);
                  },
                ),
              ),
            ],
          ),
        );
      });
}
