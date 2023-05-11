import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecorationStyle(),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BoxDecoration BoxDecorationStyle() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
          0.5,
          0.5
        ],
            colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6),
        ]));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  final textStyle = const TextStyle(
      fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        MainContent(textStyle: textStyle),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: const Color(0xff30BAD6),
      height: double.infinity,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            '1º',
            style: textStyle,
          ),
          Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue, shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
