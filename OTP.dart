import 'package:flutter/material.dart';
import 'createnewpassword.dart'; // Import CreateNewPasswordPage

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCD1A1), // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/Labeeb-logo.png',
              height: 100,
            ),
            const SizedBox(height: 20),
            // OTP Box
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'إعادة تعيين كلمة المرور',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'أدخل رمز التحقق',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), // Set label text color
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      // Logic to resend OTP
                    },
                    child: const Text(
                      'لم يصلك رمز التحقق؟ أعد إرسال الرمز',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), // Set text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F5233),
                    ),
                    onPressed: () {
                      // Navigate to Create New Password page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateNewPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'التالي',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
