import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 129, 250),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
              elevation: 4.0,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/2012_chevrolet_camaro_zl1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("supportingText"),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        child: const Text('CONTACT AGENT'),
                        onPressed: () {/* ... */},
                      ),
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      )
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
