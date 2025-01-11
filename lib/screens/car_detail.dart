import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:proyecto3d_2/model/auto.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({super.key, required this.autoActual});
  final Auto autoActual;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
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
            child: ModelViewer(
              // backgroundColor: Color.fromARGB(255, 192, 23, 23),
              src: autoActual.model3DUrl, //'assets/3d/honda_nr750_1994.glb',
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
                autoActual.titulo, //"Mercedes Benz GT",
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
                      "Año",
                      style: GoogleFonts.kanit(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          color: Colors.white
                          //fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          ),
                    ),
                    Text(
                      "2005",
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
                      "Transmisión",
                      style: GoogleFonts.kanit(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          color: Colors.white
                          //fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          ),
                    ),
                    Text(
                      "Manual",
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
                autoActual
                    .descripcion, //"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
    );
  }
}
