import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text("Soundly", style: TextStyle(color: Colors.red)),
        backgroundColor: const Color(0xFF080808),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white38),
            onPressed: () {
              // Handle notification click
            },
          ),
        ],
      ),


      body: Column(
          children: [

            Container(
              height: 300,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 219, 219),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text("Recorder"),
            ),
            const SizedBox(height: 20),

            Container(
              height: 400, // or whatever fits your design
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 219, 219),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    20,
                    (index) => ListTile(title: Text("Recording ${index + 1}")),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
