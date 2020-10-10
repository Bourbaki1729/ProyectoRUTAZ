import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(Tutoriales1());

class CustomAppBar extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect size, {TextDirection textDirection}) {
    Path path = new Path();
    path.lineTo(0,size.height - 13);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 13);
    path.lineTo(size.width, size.height - 13);
    path.lineTo(size.width, 0);
    path.close();
 return path;
  }
}

// class CustomAppBar2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = new Path();
//     path.lineTo(0,size.height - 13);
//     path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 13);
//     path.lineTo(size.width, size.height - 13);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class Tutoriales1 extends StatelessWidget {
  final List<String> problemasbici = <String>[
    '¿Cómo dar mantenimiento a la cadena?',
    '¿Cómo regular el tamaño del asiento?',
    '¿Cómo cambiar la llanta de la bicicleta?',
    '¿Cómo regular los frenos de la bicicleta?',
    'Regular pedales',
    'Apriete de bielas y pedales de bicicleta',
    'Apriete de bielas y pedales de bicicleta'
  ];
  final List<String> imagenbici = <String>[
    'imagen1.png',
    'imagen2.png',
    'imagen3.png',
    'imagen4.png',
    'imagen4.png',
    'imagen1.png',
    'imagen1.png'
  ];

  final List<String> autorvideo = <String>[
    'BikesProblems',
    'Soluciones Bici',
    'Bicicletas Jeff',
    'Bicicletas Jeff',
    'La Bicikleta',
    'Cloot Bike',
    'Cloot Bike'
  ];

  final List<String> videos = <String>[
    'https://youtu.be/1Z14L21k3yA',
    'https://youtu.be/PWneTlxkk4Y',
    'https://youtu.be/HRaDPbrXFyU',
    'https://youtu.be/cYkyFTdVy2Q',
    'https://youtu.be/m9YuEBMY-J0',
    'https://youtu.be/DW1UXD_2vrA',
    'https://youtu.be/ZsL807d3Lpk'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutoriales',
      home: Scaffold(
          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
          appBar: AppBar(
            shape: CustomAppBar(),
            title: Text('Tutoriales',
                style: TextStyle(
                fontSize: 28,
                fontFamily: 'Montserrats',
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(16, 44, 84, 1),)),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(255, 240, 0, 1),
            leading: IconButton(
              icon: Icon(Icons.close, color: Color.fromRGBO(16, 44, 84, 1),),
              onPressed: () {
                print("Click");
              },
            ),
          ),
          body: Container(
            color: Color.fromRGBO(229, 229, 229, 1), //Color fondo blanco tenue
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 10.0, left: 40.0),
                      height: 50,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Color.fromRGBO(215, 215, 215, 1)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 220,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Buscar',
                                    style: TextStyle(
                                      fontFamily: 'Montserratr',
                                      fontSize: 15.0,
                                      color: Color.fromRGBO(168, 168, 168, 1),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: Icon(
                                  Icons.search,
                                  color: Color.fromRGBO(168, 168, 168, 1),
                                ),
                              )),
                        ],
                      )),
                ),
                Align(
                      alignment:
                          Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration( //Da la forma curvilinea alrededor del boton
                          border: Border.all(color: Color.fromRGBO(54, 104, 141, 1), width: 2.0),
                          shape: BoxShape.circle,),
                        height: 40.0, //Tamaño del container alinea tamaño del boton filtro
                        width: 40.0,
                        margin: EdgeInsets.only(bottom: 15.0,left: 15.0),//Mueve el icono filtro a derecha
                        child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.filter_list, size: 25.0,
                                  color: Color.fromRGBO(24, 48, 82, 1),),
                                backgroundColor: Colors.white,
                              ),
                      ),
                   ),
                  ],),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListView.builder(
                      itemCount: problemasbici.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              height: 1,
                              width: 320,
                              color: Color.fromRGBO(255, 240, 0, 1),
                            ),
                            Container(
                                color: Color.fromRGBO(229, 229, 229, 1),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Stack(
                                            children: <Widget>[
                                              Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Image(
                                                  height: 95,
                                                  width: 95,
                                                  image: AssetImage('assets/${imagenbici[index]}'))),
                                              Positioned(
                                                bottom: 18.0, left: 17.0,right: 24.0,top: 18.0,
                                                child: IconButton(
                                                  onPressed: () async {
                                                      var url = videos[index];
                                                      if (await canLaunch(url)) {
                                                        await launch(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                  },
                                                  icon: Icon(Icons.play_circle_outline),
                                                  color: Color.fromRGBO(255, 240, 0, 1), //Color Play
                                                  iconSize: 40.0,),
                                              )
                                            ],
                                          ),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(left: 5.0),
                                                    padding: EdgeInsets.only(right: 10.0),
                                                    width: 250,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        problemasbici[index],
                                                        style: TextStyle(
                                                            fontFamily: 'Montserratr',
                                                            fontSize: 15.0,
                                                            color:
                                                                Color.fromRGBO(16, 44, 84, 1)),
                                                      ),
                                                    )),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(left: 5.0),
                                                    padding: EdgeInsets.only(right: 10.0),
                                                    width: 250,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        autorvideo[index],
                                                        style: TextStyle(
                                                            fontFamily: 'Montserratr',
                                                            fontSize: 10.0,
                                                            color:
                                                                Color.fromRGBO(168, 168, 168, 1)),
                                                      ),
                                                    )),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: FlatButton(
                                                    onPressed: () {},
                                                    child: Text("Manual", style: TextStyle(
                                                              fontFamily: 'Montserratr',),),
                                                    color: Color.fromRGBO(255, 240, 0, 1),
                                                    textColor: Color.fromRGBO(16, 44, 84, 1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                  )),
                                            ],
                                          )),
                                    ],
                                  ),
                                ))
                          ],
                        );
                      }),
                ))
              ],
            ),
          )),
    );
  }
}

// _launchURL() async {
//   const url = 'https://youtu.be/1Z14L21k3yA';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL1() async {
//   const url = 'https://youtu.be/PWneTlxkk4Y';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL2() async {
//   const url = 'https://youtu.be/HRaDPbrXFyU';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL3() async {
//   const url = 'https://youtu.be/cYkyFTdVy2Q';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL4() async {
//   const url = 'https://youtu.be/m9YuEBMY-J0';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL5() async {
//   const url = 'https://youtu.be/DW1UXD_2vrA';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// _launchURL6() async {
//   const url = 'https://youtu.be/ZsL807d3Lpk';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }