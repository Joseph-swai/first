import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pageone extends StatelessWidget {
  const  Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container holding a message and Row
              Container(
                padding: const EdgeInsets.all(16.0),
                //color: Colors.blue[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Engage in Tuition to Enhance Skkills',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        // Container 1: Message
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                           // color: Colors.blue[100],
                            child: const Text(
                              'Some students may struggle with specific subjects or topics due to various reasons such as a lack of foundation or difficulty grasping certain concepts. Tuition classes can provide focused attention to these areas of weakness, ',
                              style: TextStyle(
                                fontSize: 14,
                                
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Container 2: Other Text
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                          //  color: Colors.green[100],
                            child: const Text(
                              'Tuition provides more than just subject knowledge; it offers skills such as exam techniques, motivation, and study skills.',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Column containing image and description
              Container(
                padding: const EdgeInsets.all(12.0),
               // color: Colors.grey[200],
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/tuitionimage.png', // Placeholder image URL
                      height: 150,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Tuition classes help students improve their academic skills and learn at their own pace.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Icon Button to view posts
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Action to view posts
                  },
                  icon: Icon(Icons.visibility),
                  label: Text('View Tuition Posts'),
                ),
              ),
              const SizedBox(height: 10),
              // Icon Button to add posts (requires login)
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Action to add a new post (login required)
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add Tuition Post'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
