import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto3d_2/main_page.dart';

class PresentationPage extends StatelessWidget {
  const PresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/portada.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Encuentra \n   tu auto \n      favorito",
                  style: GoogleFonts.josefinSans(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      //fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.lightBlue
                      //fontStyle: FontStyle.italic,
                      ),
                ),
              )),
          Positioned(
            bottom: 30,
            right: 60,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.black, // Fondo para resaltar la sombra
                  shape: BoxShape.circle, // Forma opcional
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue.withOpacity(0.4),
                      blurRadius: 10,
                      //spreadRadius: 5,

                      offset: Offset(4, 4), // Posición de la sombra
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_circle_right,
                  size: 60,
                  color: Colors.lightBlue,
                ),
              ),
            ), /*Icon(
                Icons.arrow_circle_right,
                color: Colors.lightBlue,
                size: 60,
              )*/
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MainPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
