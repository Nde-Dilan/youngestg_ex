import 'package:flutter/material.dart';
import 'package:youngestg_ex/widgets/custom_buttom.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF262626),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              Container(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset("images/background.png"),
                  ),
                  const Text(
                    "Explore Course",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Featured Skill',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _FeatureCard(
                        title: 'Growth',
                        imagePath: 'images/course-1.png',
                        subtitle:
                            'Grow faster with 10% more harder, 15% more focus.',
                        actionText: 'Get Started',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      _FeatureCard(
                        title: 'JOIN A PRIVATE NETWORK',
                        imagePath: 'images/course-2.png',
                        subtitle:
                            'Collaborate with people who understand your context',
                        actionText: 'Get Started',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      _FeatureCard(
                        title: 'Exclusive Insights',
                        imagePath: 'images/course-3.png',
                        subtitle:
                            'Learn to be among the hardest workers to earn 10k to 50k/month',
                        actionText: 'Get Started',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      _FeatureCard(
                        title: 'Exclusive Insights',
                        imagePath: 'images/course-3.png',
                        subtitle:
                            'Learn to be among the hardest workers to earn 10k to 50k/month',
                        actionText: 'Get Started',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      _FeatureCard(
                        title: 'Exclusive Insights',
                        imagePath: 'images/course-1.png',
                        subtitle:
                            'Learn to be among the hardest workers to earn 10k to 50k/month',
                        actionText: 'Get Started',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Skill Categories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.asset(
                        'images/course-3.png',
                        width: 245,
                        height: 245,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.asset(
                        'images/course-1.png',
                        width: 245,
                        height: 245,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.asset(
                        'images/course-2.png',
                        width: 245,
                        height: 245,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String subtitle;
  final String actionText;

  const _FeatureCard({
    required this.title,
    required this.imagePath,
    required this.subtitle,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      height: 245,
      // width: (MediaQuery.of(context).size.width - 48) / 3,
      decoration: BoxDecoration(
        color: const Color(0xFF262626),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00FFFF),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    actionText,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
