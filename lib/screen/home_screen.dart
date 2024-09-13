import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [_Top(), _Bottom()],
          ),
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              'Anniversary Counter',
              style: textTheme.displayLarge,
            ),
            Text(
              '우리들의 기념일',
              style: textTheme.bodyLarge,
            ),
            Text(
              '2024-9-18',
              style: textTheme.bodyMedium,
            ),
            IconButton(
                iconSize: 40.0,
                color: Colors.red,
                onPressed: () {},
                icon: Icon(Icons.favorite)),
            Text(
              'D+1',
              style: textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset('asset/img/middle_image.png'),
      ),
    );
  }
}
