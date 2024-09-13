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
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Anniversary Counter',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'parisienne',
                            fontSize: 40.0),
                      ),
                      Text(
                        '우리들의 기념일',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 20.0),
                      ),
                      Text(
                        '2024-9-18',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 15.0),
                      ),
                      IconButton(
                          iconSize: 40.0,
                          color: Colors.red,
                          onPressed: () {},
                          icon: Icon(Icons.favorite)),
                      Text(
                        'D+1',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset('asset/img/middle_image.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
