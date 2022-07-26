import 'package:flutter/material.dart';
import 'package:flutter_application_1/sp_exe/spHelper.dart';

class FirstTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SP'),
      ),
      body: Center(
        child: Column(
          children: const [Text('Hello new user')],
        ),
      ),
    );
  }
}

class NormalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SP'),
      ),
      body: Center(
        child: Column(
          children: const [Text('Hello old user')],
        ),
      ),
    );
  }
}
