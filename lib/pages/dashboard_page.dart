import 'package:flutter/material.dart';
import 'package:loginform/pages/login_screen.dart';
import 'package:loginform/pages/users_page.dart';
import 'package:loginform/routes/bottom_navigation.dart';
import 'package:loginform/pages/about_page.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Map<String, dynamic>> gridItems = [
    {"icon": Icons.add_circle_outline, "label": "CONTRIBUTE"},
    {"icon": Icons.file_copy_outlined, "label": "PRACTICE"},
    {"icon": Icons.school_rounded, "label": "LEARN"},
    {"icon": Icons.favorite_outline, "label": "INTERESTS"},
    {"icon": Icons.help_outline, "label": "HELP"},
    {"icon": Icons.settings, "label": "SETTINGS"},
  ];

  static const List<Widget> _pages = <Widget>[
    DashboardPageContent(),
    UsersPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class DashboardPageContent extends StatelessWidget {
  const DashboardPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> gridItems = [
      {"icon": Icons.add_circle_outline, "label": "CONTRIBUTE"},
      {"icon": Icons.file_copy_outlined, "label": "PRACTICE"},
      {"icon": Icons.school_rounded, "label": "LEARN"},
      {"icon": Icons.favorite_outline, "label": "INTERESTS"},
      {"icon": Icons.help_outline, "label": "HELP"},
      {"icon": Icons.settings, "label": "SETTINGS"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hp123',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Hp@g.com"),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle button tap
                                },
                                child: Text('TODO LIST'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.cyan,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle button tap
                                },
                                child: Text('EDIT PROFILE'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 24.0,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person,
                            size: 32.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                childAspectRatio: 2.5,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Handle tap
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(gridItems[index]['icon'],
                            size: 40.0, color: Colors.cyan),
                        SizedBox(height: 8.0),
                        Text(
                          gridItems[index]['label'],
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
