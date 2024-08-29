import 'package:flutter/material.dart';
import 'package:flutter_application_2/user.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final User user;

  const CustomAppBar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      leading: IconButton(
        color: Colors.white,
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      ),
      title: Center(
        child: Text(
          user.username, // Display the username in the AppBar
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        FilledButton.tonal(
          onPressed: () {},
          child: const Text('Follow'),
        ),
        const SizedBox(width: 5),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
