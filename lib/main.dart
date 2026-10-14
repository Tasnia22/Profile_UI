import 'package:flutter/material.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  Widget _interestCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: const AssetImage(
                      'lib/assets/Tasnia (2).jpeg',
                    ),
                    //backgroundColor: Colors.deepPurple,
                    // child: const Icon(
                    //   Icons.person,
                    //   size: 50,
                    //   color: Colors.white,
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Tasnia Rahman",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Passionate about creating user friendly'
                    ' and engaging digital experiences.',
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),

                  const Divider(),
                  SizedBox(height: 12),
                  const Row(
                    children: [
                      Icon(Icons.email, size: 20),
                      SizedBox(width: 10),
                      Text("tasnia335@gmail.com"),
                    ],
                  ),
                  SizedBox(height: 10),

                  const Row(
                    children: [
                      Icon(Icons.phone, size: 20),
                      SizedBox(width: 10),
                      Text('+123 456 7890'),
                    ],
                  ),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Follow"),
                        ),
                      ),

                      SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Message"),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Interests heading in the center
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Two interest cards
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Travel Card
                      Expanded(
                        child: _interestCard(
                          image: 'lib/assets/travel.jpg',
                          title: 'Travel',
                          description: 'Exploring new places around the world',
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Photography Card
                      Expanded(
                        child: _interestCard(
                          image: 'lib/assets/photography.jpg',
                          title: 'Photography',
                          description: 'Capturing moments through the lens',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
