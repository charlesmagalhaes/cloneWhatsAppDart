import 'package:clone_zapzap/componentes/historiabtn.dart';
import 'package:clone_zapzap/componentes/mensagens.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaConsultores(),
    );
  }
}


class ListaConsultores extends StatefulWidget{
  @override
  ListaConsultoresState createState() => ListaConsultoresState();

}

class ListaConsultoresState extends State<ListaConsultores>{

  Color mainColor = Color (0xFF673AB7);
  var containerRadius = Radius.circular(30.0);

  List<String> imageUrl = [

    "https://www.infobae.com/new-resizer/LebFbbHN_-UDmJ0FQdjNCASQBU0=/1200x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/6KXIKKHCHVBX7NFFFJIYBULRBU",
    "https://annaclbarros.files.wordpress.com/2016/06/tom-cruise.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Jeffrey_Dean_Morgan_%28cropped%29.jpg/447px-Jeffrey_Dean_Morgan_%28cropped%29.jpg",
    "https://www.perfildosfamosos.com/kristen-stewart/foto-perfil-kristen-stewart.jpg?v=6f1a78c0b78884fb1e66e1dcae668579",
    "https://upload.wikimedia.org/wikipedia/commons/1/15/Marilyn_Monroe_1952.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Grace_Kelly30419.jpg/200px-Grace_Kelly30419.jpg",
    "https://i.pinimg.com/originals/e7/d4/83/e7d483acf5dd9eaa5c8297483a791641.jpg",
    "https://i.pinimg.com/originals/b2/99/03/b2990301ae0a950ef2e1a33aeeb0e1a0.jpg",
    "https://i2.wp.com/cebolaverde.com.br/wp-content/uploads/2017/06/5000958-17-gal-gadot.w750.h560.2x.jpg?fit=1500%2C1120&ssl=1",
    

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
      
        elevation: 0.0,
        title: Text("Lista de Consultores"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: (){

            } ,
            icon: Icon(Icons.search),
            
            ),
          IconButton(
            onPressed: (){
              
            } ,
            icon: Icon(Icons.more_horiz),
            
            ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
           
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical:  8.0),
            child: ListView(
              scrollDirection: Axis.horizontal, 
              children: [
                storyButton(imageUrl[0], "Will Smith"),
                storyButton(imageUrl[1], "Tom Cruise"),
                storyButton(imageUrl[2], "Jeffrey Dean"),
                storyButton(imageUrl[3], "Kristen Stewart"),
                storyButton(imageUrl[4], "Marilyn Monroe"),
                storyButton(imageUrl[5], "Grace Kelly"),
                storyButton(imageUrl[6], "Audrey Hepburn"),
                storyButton(imageUrl[7], "Margot Robbie"),
                storyButton(imageUrl[8], "Gal Gadot"),
              ],
           ),
          ),
          ),
          Expanded( 
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius ),
                ),
                child: Padding(
                  padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                  child: ListView(
                  children:[
                    chatTile(imageUrl[0], "Will Smith", "msg", "9AM", false),
                    chatTile(imageUrl[1], "Tom Cruise", "msg", "10PM", true),
                    chatTile(imageUrl[2], "Jeffrey Dean", "msg", "Ontem", false),
                    chatTile(imageUrl[3], "Kristen Stewart", "msg", "Hoje", true),
                    chatTile(imageUrl[4], "Marilyn Monroe", "msg", "7AM", false),
                    chatTile(imageUrl[5], "Grace Kelly", "msg", "ontem", true),
                    chatTile(imageUrl[6], "Audrey Hepburn", "msg", "8PM",true),
                    chatTile(imageUrl[7], "Margot Robbie", "msg", "Ontem", false),
                    chatTile(imageUrl[8], "Gal Gadot", "msg", "Ontem", false),

                  ]
                ),
              ),
              ),
            )
          )
        ],
      ),
    );
  }
}

