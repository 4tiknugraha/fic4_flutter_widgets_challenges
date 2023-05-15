// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DialogWiget extends StatefulWidget {
  const DialogWiget({Key? key}) : super(key: key);

  @override
  State<DialogWiget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Dialog & Bottomsheet"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: 0,
            top: 120,
            right: 0,
            bottom: 0,
          ),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                  fixedSize: const Size(320, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Your order was placed!'),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          )
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'Open Dialog',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  textStyle: const TextStyle(fontSize: 16),
                  primary: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  fixedSize: const Size(320, 40),
                ),
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Your order was paced!'),
                              const SizedBox(
                                height: 30.0,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  'Open BottomSeeet',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                  fixedSize: const Size(320, 40),
                  primary: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () async {
                  bool confirm = false;
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.all(30),
                        padding: const EdgeInsets.all(30.0),
                        child: Wrap(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    'Confirm',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const Text(
                                    'Are you sure want to delete this item?',
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey[600],
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('No'),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueGrey,
                                        ),
                                        onPressed: () {
                                          confirm = true;
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Yes'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                  if (confirm) {
                    debugPrint('Confirmed!');
                  }
                },
                child: const Text(
                  'Open Bottomsheet confirmation',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                  fixedSize: const Size(320, 40),
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.blue,
                      content: Text('Your request is successful'),
                    ),
                  );
                },
                child: const Text(
                  'Open sncakbar',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
