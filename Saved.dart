import 'package:flutter/material.dart';

class SavedTranslationsScreen extends StatefulWidget {
  const SavedTranslationsScreen({super.key});

  @override
  _SavedTranslationsScreenState createState() =>
      _SavedTranslationsScreenState();
}

class _SavedTranslationsScreenState extends State<SavedTranslationsScreen> {
  // قائمة تحتوي على الترجمات المحفوظة
  List<String> savedTranslations = [
    'ترجمة 1',
    'ترجمة 2',
    'ترجمة 3',
  ];

  // وظيفة لإزالة الترجمة من القائمة
  void removeTranslation(int index) {
    setState(() {
      savedTranslations.removeAt(index);
    });
  }

  // وظيفة لعرض مربع تأكيد الحذف
  void showDeleteConfirmation(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('تأكيد الإزالة'),
          content: const Text('هل أنت متأكد أنك تريد إزالة هذه الترجمة من المحفوظات؟'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // إغلاق مربع الحوار
              },
              child: const Text('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                removeTranslation(index);  // إزالة الترجمة
                Navigator.of(context).pop();  // إغلاق مربع الحوار
              },
              child: const Text('إزالة من المحفوظات'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F5233),
        title: const Text('المحفوظات'),
      ),
      body: savedTranslations.isEmpty
          ? const Center(child: Text('لا توجد ترجمات محفوظة'))
          : ListView.builder(
              itemCount: savedTranslations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(savedTranslations[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // عرض مربع تأكيد الإزالة
                      showDeleteConfirmation(index);
                    },
                  ),
                );
              },
            ),
    );
  }
}
