import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const String name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progres Indicators'),
      ),
      body: const _PogressView()
    );
  }
}

class _PogressView extends StatelessWidget {
  const _PogressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Cirular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45),

          SizedBox(height: 20),
          Text('Circular y linear controlado'),
          SizedBox(height: 10),
          _ControllerPogressIndicator()
        ]
        ),
    );
  }
}


class _ControllerPogressIndicator extends StatelessWidget {
  const _ControllerPogressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(value: progressValue,strokeWidth: 2, backgroundColor: Colors.black12),
            const SizedBox(width: 20),
            Expanded(
              child:LinearProgressIndicator(value: progressValue) 
            )
          ],
        ),
      );
      },
      
    );
  }
}