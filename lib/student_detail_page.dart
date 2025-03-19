import 'package:flutter/material.dart';
import 'student.dart';

class StudentDetailPage extends StatelessWidget {
  final Student student;

  StudentDetailPage({required this.student});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = student.gender == 'male' ? Colors.blue[100] : const Color.fromARGB(255, 242, 181, 228);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ข้อมูลนักศึกษา',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Sarabun'),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: backgroundColor,
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(student.imageUrl),
                ),
                SizedBox(height: 20),
                Text(
                  '${student.firstName} ${student.lastName}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sarabun',
                    height: 1.4, 
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'รหัสนักศึกษา: ${student.id}',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700], fontFamily: 'Sarabun'),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: student.gender == 'male' ? Colors.blue[200] : const Color.fromARGB(255, 230, 147, 245),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'เพศ: ${student.gender == 'male' ? 'ชาย' : 'หญิง'}',
                    style: TextStyle(fontSize: 18, fontFamily: 'Sarabun'),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('กลับไปหน้าหลัก', style: TextStyle(fontSize: 18, fontFamily: 'Sarabun')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}