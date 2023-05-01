import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Teste teste'),
    );
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
  bool _sizeMultiplied = false;
  double radius = 200;
  bool isClicked = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _sizeMultiplied = _counter % 2 == 1;
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            isClicked = isClicked ? false : true;
                            setState(() {});
                          },
                          child: smallContainer(
                            color: isClicked ? Colors.brown : Colors.red,
                            size: _sizeMultiplied ? 400 : 200,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        isClicked = isClicked ? false : true;
                                        setState(() {});
                                      },
                                      child: smallContainer(
                                        size: _sizeMultiplied ? 100 : 50,
                                        color: isClicked ? Colors.brown : Colors
                                            .green,
                                        child: Text('1'),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        isClicked = isClicked ? false : true;
                                        setState(() {});
                                      },
                                      child: smallContainer(
                                        size: _sizeMultiplied ? 100 : 50,
                                        color: isClicked ? Colors.brown : Colors
                                            .blue,
                                        child: Text('2'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        isClicked ? false : true;
                                        setState(() {

                                        });
                                      },
                                      child: smallContainer(
                                        size: _sizeMultiplied ? 100 : 50,
                                        color: isClicked ? Colors.brown : Colors
                                            .black,
                                        child: Text(
                                          '3',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        isClicked ? false : true;
                                        setState(() {

                                        });
                                      },
                                      child: smallContainer(
                                        size: _sizeMultiplied ? 100 : 50,
                                        color: isClicked ? Colors.brown : Colors
                                            .white,
                                        child: Text('4'),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('5'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            isClicked = isClicked ? false : true;
                            setState(() {});
                          },
                          child: smallContainer(
                            size: _sizeMultiplied ? 400 : 200,
                            color: isClicked ? Colors.brown : Colors.green,
                            child: Text('6'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            isClicked = isClicked ? false : true;
                            setState(() {});
                          },
                          child: smallContainer(
                            size: _sizeMultiplied ? 400 : 200,
                            color: isClicked ? Colors.brown : Colors.blue,
                            child: Text('7'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            isClicked = isClicked ? false : true;
                            setState(() {});
                          },
                          child: smallContainer(
                            size: _sizeMultiplied ? 400 : 200,
                            color: isClicked ? Colors.brown : Colors.yellow,
                            child: Text('8'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                radius = radius == 0 ? 200 : 0;
                setState(() {});
              },
              child: Text('Teste'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container smallContainer(
      {required double size, required Color color, Widget? child}) {
    return Container(
      height: size,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      width: size,
      alignment: Alignment.bottomRight,
      child: child,
    );
  }
}