// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/dialog_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_form/form_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/aspectratio_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/center_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/column_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/expanded_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/gridview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/listview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/padding_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/row_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/sizedbox_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/stack_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/wrap_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/button_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/circle_avatar_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/container_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/icon_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/image_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/scaffold_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/text_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/bottom_navbar.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/drawer_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/navigation_pop.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/navigation_push.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/sliver_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/tabbar_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/stateful_sample/stateless_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabbarWidget(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Jago Flutter'),
      //   ),
      //   body: const ChangeTimeWidget(),
      // ),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update Time'),
        ),
      ],
    );
  }
}

class ShowTextWidget extends StatelessWidget {
  final String text;
  const ShowTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
