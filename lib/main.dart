import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      // home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Welcome screen
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(40.0),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue, Colors.lightBlueAccent],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//           // borderRadius: BorderRadius.all(Radius.circular(20)),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               child: Center(
//                 child: Image.asset('assets/images/management.png'), // Your illustration image
//               ),
//             ),
//             const SizedBox(height: 50.0),
//             const Text(
//               'Welcome to Go Task',
//               style: TextStyle(
//                 fontSize: 35.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 10.0),
//             const Text(
//               'A workspace to over 10 Million influencers around the global of the world.',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.black38,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 100.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Add navigation or action here
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.blue, backgroundColor: Colors.lightBlue,
//                 // padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
//                 textStyle: const TextStyle(fontSize: 16.0),
//
//
//               ),
//               child: const SizedBox(width: double.infinity,
//                 child: Text(
//                   "Let's Start",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.white,
//                   ),),
//               )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//HomePage Screen


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white54,
            title: const Text('Homepage',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            centerTitle: true,
            actions: <Widget>[
              IconButton(onPressed: () {},
                  icon: const Icon(Icons.notifications_active_outlined,
                      color: Colors.black45, size: 35))
            ],
            // backgroundColor: Colors.lightBlue,
            leading: IconButton(onPressed: () {},
                icon: const Icon(Icons.apps, color: Colors.black45, size: 35)),
          ),
          body: const BodyHomePage(),
          bottomNavigationBar: const BottomNaviBar(),
          ),
    );
  }
}

//Body HomePage
class BodyHomePage extends StatelessWidget {
  const BodyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
        children: [
          SizedBox(height: 10),
          CustomCard(),
          SizedBox(height: 10),
          Expanded(child: TaskListView()),
        ]
    );
  }
}

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
      const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
            children: [
              Text(
                "Today's Task",
                style: TextStyle(color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ]),

        SizedBox(width: 140),
        Column(
            children: [
              Text(
                  'See All',
                  style: TextStyle(color: Colors.black38,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)
              )
            ]
        )
      ],
    ),
        Expanded(

          child: SizedBox(
            width: double.infinity,
            child: TaskView(),
          ),
        )
    ],
        );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Today's progress summary",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '15 Tasks',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Stack(
                children: [
                  SizedBox(
                    width: 115,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/dog.jpg'),
                  ),
                  Positioned(
                    left: 25,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/cat.jpg'),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/mouse.jpg'),
                    ),
                  ),
                  Positioned(
                    left: 75,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Spacer(),

              Column(
                children: [
                  const Row(
                    children: [
                      Column(
                          children: [
                            Text(
                                'Progress',
                                style: TextStyle(color: Colors.white)
                            ),
                          ]),

                      SizedBox(width: 70),
                      Column(
                          children: [
                            Text(
                                '40%',
                                style: TextStyle(color: Colors.white)
                            )
                          ]
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      minHeight: 8,
                      value: 0.4,
                      // 40% progress
                      backgroundColor: Colors.white.withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      valueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  const SizedBox(height: 5),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class TaskView extends StatelessWidget {
  final List<Task> tasks = [
    Task('UI Design', '09:00 AM - 11:00 AM', Icons.palette),
    Task('Web Development', '11:30 AM - 12:30 PM', Icons.code),
    Task('Office Meeting', '02:00 PM - 03:00 PM', Icons.meeting_room),
    Task('Dashboard Design', '03:30 PM - 05:00 PM', Icons.dashboard),
  ];

    TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(task: tasks[index]); // Không cần từ khóa const
      },
    );
  }
}

class Task {
  final String title;
  final String time;
  final IconData icon;

  Task(this.title, this.time, this.icon);
}

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({super.key, required this.task}); // Không cần từ khóa const

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue[100],
          child: Icon(
            task.icon,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          task.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          task.time,
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
          // Handle item tap if needed
        },
      ),
    );
  }
}

// Bottom Navigation Bar
class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});
  @override
  State<BottomNaviBar> createState() =>
      _BottomNavigationBarState();
}
class _BottomNavigationBarState
    extends State<BottomNaviBar> {
  final int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Business',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}