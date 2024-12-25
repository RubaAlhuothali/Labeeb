import 'package:flutter/material.dart';

class RecordVideoScreen extends StatelessWidget {
  const RecordVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCD1A1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F5233),
        title: const Text('تسجيل الفيديو'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow, width: 2),
              ),
              child: const Center(
                child: Text(
                  'يمكنك تسجيل فيديو مدته 15 ثانية فقط',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            icon: const Icon(
              Icons.circle,
              color: Colors.red,
              size: 50,
            ),
            onPressed: () {
              // Start recording
            },
          ),
        ],
      ),
    );
  }
}
