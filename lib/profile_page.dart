import 'package:flutter/material.dart';
import 'package:flutter_application_2/user.dart';
import 'package:flutter_application_2/custom_appbar.dart'; // Import the CustomAppBar

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(user: user), // Use the CustomAppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(user.imagePath),
              ),
              const SizedBox(height: 20),
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.location,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '220',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text('Followers',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '150',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text('Following',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.language, color: Colors.grey),
                  SizedBox(width: 30),
                  Icon(Icons.image, color: Colors.grey),
                  SizedBox(width: 30),
                  Icon(Icons.facebook, color: Colors.grey),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Image.asset(
            'images/imag.jpeg', // Use the path to your uploaded image
            fit: BoxFit.fill,
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Donate'),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Message'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
