import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/asset/p2.png',
      'assets/asset/p3.png',
      'assets/asset/p4.png',
      'assets/asset/p5.png',
      'assets/asset/p6.png',
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 120),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

                ),
              ),
              IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
              ),
            ],
          )

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Information Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Student",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: List.generate(5, (index) =>
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePaths[index]),
                          ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Photoshop Editing Course",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.play_circle_outline, size: 20),
                            SizedBox(width: 4),
                            Text("30 Lessons"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.timer_outlined, size: 20),
                            SizedBox(width: 4),
                            Text("13h 30min"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Video Section
            Row(
              children: [
                Text(
                  "Video",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 250),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {}, child: Text("View All")),
                  ),
                ),
              ],
            ),


            Expanded(
              child: ListView(
                children: [
                  videoTile("Introduction", "3h 30min"),
                  videoTile("Install Software", "1h 30min"),
                  videoTile("Learn Tools", "2h 30min"),
                  videoTile("Tracing Sketsa", "2h 20min"),
                ],
              ),
            ),
            // Enroll Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF90EE90), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Enroll Now",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white // Text color
                    ),
                  ),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }

  Widget videoTile(String title, String duration) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(Icons.lock, size: 28),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(duration),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            // primary: Colors.white,
            // onPrimary: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.green),
            ),
          ),
          child: Text(
            "Play Video",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ),
    );
  }

}
