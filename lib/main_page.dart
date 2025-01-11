import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:proyecto3d_2/data/datos_ficticios.dart';
import 'package:proyecto3d_2/model/auto.dart';
import 'package:proyecto3d_2/screens/car_detail.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /*List<Auto> articulosFiltrados = articulosDisponibles
      .where((articulo) => articulo.categoria == TipoProducto.reloj)
      .toList();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nuevos autos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromARGB(255, 152, 203, 245),
      body: ListView.builder(
        itemCount: autosDisponibles.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CarDetail(
                  autoActual: autosDisponibles[index],
                ),
              ));
            },
            child: Card(
                elevation: 4.0,
                child: Container(
                  //scolor: Colors.red,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 250.0,
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    autosDisponibles[index].imageUrl),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text(
                        autosDisponibles[index].titulo,
                        style: GoogleFonts.nunitoSans(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "17000 \$",
                                style: GoogleFonts.kanit(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 20,
                                    color: Colors.black
                                    //fontWeight: FontWeight.w700,
                                    //fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 21, 109, 231))),
                              padding: EdgeInsets.all(4.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Detalles",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 21, 109, 231),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
