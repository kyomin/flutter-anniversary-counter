import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text('Anniversary Counter'),
                      Text('우리들의 기념일'),
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      Text('D+1')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
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
