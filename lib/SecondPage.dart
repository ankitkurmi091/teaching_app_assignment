import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  HomePage2 createState() => HomePage2();

}
class HomePage2 extends State<SecondPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Profile Info
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage('assets/asset/p2.png'), // Placeholder for image
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Christiana Amandla',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Lets Learning to smart',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.search, size: 28),
                ],
              ),
              const SizedBox(height: 20),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                // color: Colors.lightGreen[300],
                color: Colors.orange[300],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 470,
                        height: 57,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          color: Colors.orange[100],
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Text(
                                  "Mathematics Course",
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today, size: 20),
                                    SizedBox(width: 4),
                                    Text("19 Nov, 2023"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.check_circle, color: Colors.white,
                                size: 30,),
                              SizedBox(height: 10),
                              Text(
                                "Completed",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer_outlined, color: Colors.white,
                                size: 30,),
                              SizedBox(height: 8),
                              Text(
                                "Hours Spent",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "455",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Popular Course Section
              sectionTitle(context, 'Popular Course'),
              const SizedBox(height: 10),

              // Course List
              courseListView(),

              const SizedBox(height: 20),

              // Popular Course Section (again)
              sectionTitle(context, 'Popular Course'),
              const SizedBox(height: 10),

              courseListViewSingle(),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        // onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget sectionTitle(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All',style: TextStyle(fontSize: 17),),
        ),
      ],
    );
  }

  Widget courseListView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        courseCard('Photoshop Editing Course', 'Ps', Color(0xFF330000), '4.8 (230)', ' 30 Lessons', Colors.blueAccent),
        courseCard('Illustrator Editing Course', 'Ai', Colors.brown[700]!, '4.8 (230)', ' 30 Lessons', Colors.yellow),
      ],
    );
  }

  Widget courseCard(String title, String courseLogo, Color color, String rating, String lessons, Color color11) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon(Icons.apps, size: 36, color: color),
            Center(
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: color, // Background color similar to the indicator in the screenshot
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    courseLogo,
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: color11,
                    ),
                  ), // Placeholder for XD Logo
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.star, size: 18, color: Colors.orange),
                const SizedBox(width: 5),
                Text(rating, style: TextStyle(fontSize: 15),),
              ],
            ),
            const SizedBox(height: 5),
            Text(lessons, style: TextStyle(fontSize: 15),),

          ],
        ),
      ),
    );
  }
  Widget courseListViewSingle() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Course Logo (Icon)
          Container(
            width: 70,
            height: 71,
            decoration: BoxDecoration(
              color: Colors.black87, // Background color similar to the indicator in the screenshot
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Xd',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ), // Placeholder for XD Logo
            ),
          ),
          const SizedBox(width: 16),

          // Course Info
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adobe Xd Editing Course',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),

                // Rating and Lessons
                Row(
                  children: [
                    Icon(Icons.star, size: 18, color: Colors.orange),
                    SizedBox(width: 5),
                    Text('4.8 (230)',style: TextStyle(fontSize: 15)),
                    SizedBox(width: 15),
                    Icon(Icons.play_circle_fill, size: 18, color: Colors.grey),
                    SizedBox(width: 5),
                    Text('30 Lessons', style: TextStyle(fontSize: 15),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const CourseInfo({
    required this.icon,
    required this.label,
    required this.value,
  });
  //
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green, size: 24),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }


}
