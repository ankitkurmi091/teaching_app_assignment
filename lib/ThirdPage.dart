import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  ThirdPage1 createState() => ThirdPage1();
}

class ThirdPage1 extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE8EAF6),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Icon(
              //   Icons.check_circle,
              //   size: 80.0,
              //   color: Colors.teal,
              // ),
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/asset/payment.png',
                  height: 65,
                ),

              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        // SizedBox(height: 10),
                        child: Text(
                          "Payment Success",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Center(
                        // SizedBox(height: 8),
                        child: Text(
                          "\$35.00",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child:  Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 15.0,left: 15.0, right: 15.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/asset/person.png',
                                        ),
                                        radius: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Christiana Amandla',
                                        style: TextStyle(

                                          fontSize: 16,
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                                SizedBox(height: 15),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(padding: EdgeInsets.only(top: 1.0, left: 15),
                                        // SizedBox(height: 10),
                                        child: Text(
                                          'Adobe Xd Editing Course',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                                Padding(padding: EdgeInsets.only(top: 15.0, left: 15,right: 15, bottom: 15),
                                  // SizedBox(height: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ID Transcription',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'TA11231PW',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Invoice Date',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Nov 14, 2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )

                        ),
                      ),


                      const SizedBox(height: 20),
                      Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 15, left: 12.0, right: 12.0),
                        child: Container(
                          width: 370,
                          height: 75,
                          child: Image.asset(
                            'assets/asset/qr.png',
                            height: 65,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Action for done button .........
                },
                child: const Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
