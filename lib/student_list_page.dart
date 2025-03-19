import 'package:flutter/material.dart';
import 'student_detail_page.dart';
import 'student_data.dart';

class StudentListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายชื่อนักศึกษา',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Sarabun'),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          final student = studentList[index];
          final backgroundColor = student.gender == 'male' ? Colors.blue[100] : const Color.fromARGB(255, 224, 166, 234);

          return Card(
            color: backgroundColor,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(student.imageUrl),
              ),
              title: Text(
                '${student.firstName} ${student.lastName}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sarabun',
                  height: 1.4, 
                ),
              ),
              subtitle: Text(
                'รหัส: ${student.id}',
                style: TextStyle(fontSize: 16, color: Colors.grey[800], fontFamily: 'Sarabun'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentDetailPage(student: student)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}