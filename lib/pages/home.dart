import 'package:flutter/material.dart';
import 'package:sdym/pages/login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 60,
              height: 60,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Ação ao clicar no menu
              },
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 80, 1, 190),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 80, 1, 190),
                  Color.fromARGB(255, 2, 185, 167)
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: Colors.white,
            ),
            height: 400,
            width: double.infinity,
            

            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 12,left: 18.0, right: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(height: 40),
                    Text(
                      'Bem-vindo ao DYM-Photos',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 80, 1, 190),
                      ),
                    ),
                     SizedBox(height: 10),
                    Text(
                      'Uma Verdadeira galeria de fotos, pois aqui encontraras todos os tipos de fotos no que diz repeito a Natureza, Culinaria, desporto, Finanças.',
                      
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 80, 1, 190),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                      SizedBox(height: 20),
                    Text(
                      '  TWAPANDULA \n OBRIGADO\n THANK YOU',
                      
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromARGB(255, 80, 1, 190),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 35),
                    
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 80, 1, 190),
                              Color.fromARGB(255, 2, 202, 182),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sair',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        
                        
                        ),

                    ),

                  ],

                ),
            ),
            
            
          ),
          )
        ],
      ),
    );
  }
}



void main() {
  runApp(MyApp());
}
