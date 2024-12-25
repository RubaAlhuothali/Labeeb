import 'package:flutter/material.dart';
import 'Saved.dart';  // Import the SavedTranslationsScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCD1A1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F5233),
        title: Image.asset(
          'assets/Labeeb-logo.png',  // Replace with the correct path to your logo
          height: 40,  // Adjust the size of the logo
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile page (Implement later)
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Labeeb-logo.png',  // Assuming you want the logo here too
              height: 100,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to Record Video screen (implement later)
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Color.fromARGB(255, 255, 254, 254), // Set icon color
                  ),
                  label: const Text('ترجمة الإشارة'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F5233),
                    foregroundColor: const Color.fromARGB(255, 255, 254, 254), // Set label text color
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to Saved Translations screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SavedTranslationsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.download,
                    color: Color.fromARGB(255, 255, 254, 254), // Set icon color
                  ),
                  label: const Text('المحفوظات'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F5233),
                    foregroundColor: const Color.fromARGB(255, 255, 254, 254), // Set label text color
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
