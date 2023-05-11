import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(
          image: AssetImage('assets/landscape.jpg'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Title(),
        const SizedBox(
          height: 20,
        ),
        const Buttons(),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Ut mollit ipsum in irure in ullamco. Dolore cillum ea ad qui anim excepteur adipisicing ea. Sit tempor proident exercitation commodo aliquip. Sunt et adipisicing duis aliqua ad. Proident eu id consequat eu et est et duis occaecat est. Exercitation occaecat cupidatat amet sunt enim minim consequat ad consectetur ex nulla voluptate adipisicing laborum. Aute duis aliqua voluptate laboris commodo sit do mollit voluptate eu est elit. Ullamco sit in duis Lorem id occaecat irure duis laborum sint incididunt et labore. Esse et mollit adipisicing Lorem enim do anim pariatur. Ipsum eiusmod tempor sunt eiusmod ullamco in id laborum eiusmod quis.",
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ));
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          icon: Icons.call,
          text: "CALL",
        ),
        CustomButton(
          icon: Icons.arrow_drop_down_circle_rounded,
          text: "ROUTE",
        ),
        CustomButton(
          icon: Icons.share,
          text: "SHARE",
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.blue[200],
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue[200]),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Las cascadas de Buarfoss',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Lugar: Islandia',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}
