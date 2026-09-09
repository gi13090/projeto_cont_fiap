import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pessoas = 0;

  final int capacidadeMaxima = 15;

  void increment() {
    if (pessoas < capacidadeMaxima) {
      setState(() {
        pessoas++;
      });
    }
  }

  void decrement() {
    if (pessoas > 0) {
      setState(() {
        pessoas--;
      });
    }
  }

  String get mensagemSituacao {
    if (pessoas == capacidadeMaxima) {
      return "Ambiente lotado!";
    } else if (pessoas >= 10) {
      return "Atenção: ambiente quase cheio!";
    } else {
      return "Pode entrar!";
    }
  }

  Color get corSituacao {
    if (pessoas == capacidadeMaxima) {
      return Colors.redAccent;
    } else if (pessoas >= 10) {
      return Colors.orangeAccent;
    } else {
      return Colors.lightGreenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Container(
          color: Colors.black.withOpacity(0.65),

          child: Transform.translate(
            offset: Offset(0, -50),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text(
                  "Seja bem-vindo(a) ao nosso cabarê!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Capacidade máxima: $capacidadeMaxima pessoas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 25),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Text(
                    mensagemSituacao,
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 24,
                      color: corSituacao,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 5,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    "$pessoas",
                    style: TextStyle(
                      fontSize: 90,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text(
                  "pessoas no local",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    TextButton(
                      onPressed: decrement,

                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(140, 90),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),

                      child: Text(
                        "Saiu",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(width: 15),

                    // Botão Entrou
                    TextButton(
                      onPressed: increment,

                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(140, 90),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),

                      child: Text(
                        "Entrou",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}