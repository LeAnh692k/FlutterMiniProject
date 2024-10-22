import 'package:flutter/material.dart';

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
          SizedBox(height: 20),
          CustomCard(),
          SizedBox(height: 20),
          Expanded(child: TaskListView()),
        ]
    );
  }
}
//CustomCard
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

//Task List View
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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Today's Task",
                    style: TextStyle(color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ]),

            SizedBox(width: 165,),
            Column(
                children: [
                  Text(
                      'See All',
                      style: TextStyle(color: Colors.black38,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                  )
                ]
            ),
            // SizedBox(height: ,)
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

class TaskView extends StatelessWidget {
  final List<Task> tasks = [
    Task('UI Design', '09:00 AM - 11:00 AM', Icons.palette),
    Task('Web Development', '11:30 AM - 12:30 PM', Icons.code),
    Task('Office Meeting', '02:00 PM - 03:00 PM', Icons.meeting_room),
    Task('Dashboard Design', '03:30 PM - 05:00 PM', Icons.dashboard),
    Task('Flutter Development', '05:30 PM - 07:00 PM', Icons.developer_board)
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
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue, size: 30,),
            label: 'Home',
            backgroundColor: Colors.white60
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, color: Colors.blue, size: 30,),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: Colors.blue, size: 30,),
          backgroundColor: Colors.blue,
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message, color: Colors.blue, size: 30,),
          backgroundColor: Colors.white60,
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.blue,),
          backgroundColor: Colors.white60,
          label: 'Business',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black38,
      // onTap: _onItemTapped,
    );
  }
}