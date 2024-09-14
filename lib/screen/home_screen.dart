import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Top(
                selectedDate: selectedDate,
                onPressed: onHeartPressed,
              ),
              _Bottom()
            ],
          ),
        ),
      ),
    );
  }

  void onHeartPressed() {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.white,
              height: 300.0,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate,
                maximumDate: DateTime.now(),
                onDateTimeChanged: (DateTime date) {
                  // setState에 의해 build가 다시 실행된다.
                  setState(() {
                    selectedDate = date;
                  });
                },
                dateOrder: DatePickerDateOrder.ymd,
              ),
            ),
          );
        });
  }
}

class _Top extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback? onPressed;

  const _Top({required this.selectedDate, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
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
            '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}', // 부모의 state 접근을 위해 widget 사용하여 접근
            style: textTheme.bodyMedium,
          ),
          IconButton(
              iconSize: 40.0,
              color: Colors.red,
              onPressed: onPressed,
              icon: Icon(Icons.favorite)),
          Text(
            'D+${now.difference(selectedDate).inDays + 1}',
            style: textTheme.displayMedium,
          )
        ],
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
