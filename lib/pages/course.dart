import 'package:flutter/material.dart';
import 'package:youngestg_ex/widgets/custom_buttom.dart';
class DSCoursesPage extends StatelessWidget {
  const DSCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'DSCourses',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  CourseCard(
                    imagePath: 'images/course-1.png',
                    title:
                        'Imagine launching a store overnight into the global marketplace by',
                    subtitle:
                        'E-Commerce is your gateway to rapid retail success.',
                  ),
                  SizedBox(height: 16),
                  CourseCard(
                    imagePath: 'images/course-1.png',
                    title:
                        'Imagine launching a store overnight into the global marketplace by',
                    subtitle:
                        'E-Commerce is your gateway to rapid retail success.',
                  ),
                  SizedBox(height: 16),
                  CourseCard(
                    imagePath: 'images/course-1.png',
                    title:
                        'Imagine launching a store overnight into the global marketplace by',
                    subtitle:
                        'E-Commerce is your gateway to rapid retail success.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  const MyBottomNavBar()
    );
  }
}

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
