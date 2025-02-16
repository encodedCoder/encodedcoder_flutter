import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/favicon.png', // Make sure to add your favicon to the assets folder
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 8),
          const Text('encodedCoder · Suresh'),
        ],
      ),
      actions: [
        _buildNavLink(context, 'Home', '/'),
        _buildNavLink(context, 'Portfolio', '/portfolio'),
        _buildNavLink(context, 'WebDev', '/web-dev'),
        _buildNavLink(context, 'GameDev', '/game-dev'),
        _buildNavLink(context, 'About', '/about'),
        _buildNavLink(context, 'Contact', '/contact'),
      ],
    );
  }

  Widget _buildNavLink(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
