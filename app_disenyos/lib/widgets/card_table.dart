import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.window,
              text: 'General',
              color: Colors.blue,
            ),
            _SingleCard(
              icon: Icons.car_crash_rounded,
              text: 'Tranports',
              color: Colors.purple,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag,
              text: 'Shopping',
              color: Colors.pink,
            ),
            _SingleCard(
              icon: Icons.edit_note_rounded,
              text: 'Bills',
              color: Colors.orange,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_filter_rounded,
              text: 'Enterteiment',
              color: Colors.indigo,
            ),
            _SingleCard(
              icon: Icons.fastfood,
              text: 'Gocery',
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {super.key, required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          margin: const EdgeInsets.all(15),
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(
                  icon,
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                text,
                style: TextStyle(color: color, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
