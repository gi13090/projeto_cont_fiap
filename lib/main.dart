import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  } 
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage extends StatelessWidget{
  //const HomePage(Key? key):super(key:key);
  void decrement(){
    print("Decrementando...");
  }

  void increment(){
    print("Incrementando...");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green,


      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,//Alinhado no eixo da vertical
        children: [
          Text("Pode Entrar!",
              style:
                TextStyle(
                  fontSize: 26,
                  color:Colors.white,
                  fontWeight: FontWeight.w700
                )
          ),
          Text("0",
            style: 
              TextStyle(
                fontSize: 100,
                color:Colors.white
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                fixedSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
              child:
                Text("Sair, chorando",
                  style:TextStyle(
                  fontSize:16,
                  color: Colors.black
              ))),
              TextButton(onPressed: increment,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                fixedSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
              child:Text("É dentro!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ),  
              ))
            ],
          )
        ],
      ),
      ),
    );
  }
}




