import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Model Viewer')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.grey,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const ModelViewer(
                // backgroundColor: Color.fromARGB(255, 192, 23, 23),
                src: 'assets/3d/honda_nr750_1994.glb',
                /* - assets/3d/mersedes_cls63.glb
   
    

     - assets/3d/1965_ford_mustang_convertible.glb */
                alt: 'A 3D model of an astronaut',
                ar: true,
                autoRotate: false,
                //iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
                disableZoom: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mercedes Benz GT",
                  style: GoogleFonts.nunitoSans(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 109, 231),
                      borderRadius: BorderRadius.circular(5)),
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Velocidad",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                      Text(
                        "120km/h",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 19,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 109, 231),
                      borderRadius: BorderRadius.circular(5)),
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Velocidad",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                      Text(
                        "120km/h",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 19,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 109, 231),
                      borderRadius: BorderRadius.circular(5)),
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Velocidad",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                      Text(
                        "120km/h",
                        style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 19,
                            color: Colors.white
                            //fontWeight: FontWeight.w700,
                            //fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: GoogleFonts.sora(
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      fontSize: 13,
                      color: const Color.fromARGB(255, 53, 52, 52)
                      //fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic,
                      ),
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$70 000.00",
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 25,

                    //fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
              width: 200.0, // Set the desired width
              height: 50.0, // Set the desired height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 21, 109, 231),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 21, 109, 231),
                ),
                child: Text(
                  'COMPRAR',
                  style: GoogleFonts.kanit(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      //fontWeight: FontWeight.w700,
                      color: Colors.white
                      //fontStyle: FontStyle.italic,
                      ),
                ),
              ),
            ),
            SizedBox(height: 0.5)
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
}
