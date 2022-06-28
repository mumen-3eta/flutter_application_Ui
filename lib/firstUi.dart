import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstUi extends StatelessWidget {
  String url =
      'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: Image.asset('assets/images/fun.jpg', width: 194),
                    ),
                    const Text('image1', style: TextStyle(fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Image.asset('assets/images/fun.jpg', width: 194),
                    ),
                    const Text('image1', style: TextStyle(fontSize: 20)),
                  ],
                )
              ],
            ),
            const Text('mumen',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ],
        ),
      ),
    );
  }
}
