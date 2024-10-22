import 'package:flutter/material.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create New Task',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            color: Colors.black26,
            iconSize: 25,
          ),
        ),
        body: const CustomForm(),
      ),
    );
  }
}

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          //Task Name
          TaskName(),

          SizedBox(
            height: 10,
          ),
          //Category
          Category(),

          SizedBox(
            height: 10,
          ),
          //DateTime
          DateTime(),

          SizedBox(
            height: 10,
          ),
          //DateTime
          SetTime(),

          SizedBox(
            height: 10,
          ),
          DeScrIpTiOn(),

          SizedBox(
            height: 10,
          ),

          // Button Create Task
          BtnCreateTask(),
        ],
      )),
    );
  }
}

// Task Name
class TaskName extends StatelessWidget {
  const TaskName({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        // Task Name
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Task Name',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'UI Design',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 19),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0))),
          ),
        ),
        //End Task Name
      ],
    );
  }
}

//Category
class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Category',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                // Màu văn bản
                elevation: 5,
                // Độ sâu bóng
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text(
                'Design',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                // Màu văn bản
                elevation: 5,
                // Độ sâu bóng
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text('Development', style: TextStyle(fontSize: 17)),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                // Màu văn bản
                elevation: 5,
                // Độ sâu bóng
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text('Research', style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
        //End Task Name
      ],
    );
  }
}

// Date & Time
class DateTime extends StatelessWidget {
  const DateTime({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        // Task Name
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Date & Time',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                ),
                hintText: '05 April, Tuesday',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 19),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0))),
          ),
        ),
      ],
    );
  }
}

//Start - End Time
class SetTime extends StatelessWidget {
  const SetTime({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            DropdownTextField(),
          ],
        )
      ],
    );
  }
}

class DropdownTextField extends StatefulWidget {
  const DropdownTextField({super.key});

  @override
  _DropdownTextFieldState createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField>{
  String? _startTime = '09:00 AM';
  String? _endTime = '11:00 AM';
  final List<String> _times = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Start time
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Start time',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.grey, fontSize: 17),
                          value: _startTime,
                          items: _times.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _startTime = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 20,),
              // End time
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Start time',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.grey, fontSize: 17),
                          value: _endTime,
                          items: _times.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _endTime = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// Descripton
class DeScrIpTiOn extends StatelessWidget {
  const DeScrIpTiOn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        // Task Name
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Descripton',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            maxLines: 2,
            decoration: InputDecoration(
                hintText:
                    'Research design paths. There are many career paths within the field of design',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 19),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0))),
          ),
        ),
        //End Task Name
      ],
    );
  }
}

// Button Create Task
class BtnCreateTask extends StatelessWidget{
  const BtnCreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
      child: SizedBox(
        width: double.infinity, // Make the button take up the full width
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Background color
            padding: const EdgeInsets.symmetric(vertical: 16), // Padding for height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
          ),
          child: const Text(
            'Create Task',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Text color
            ),
          ),
        ),
      ),
    );
  }
}