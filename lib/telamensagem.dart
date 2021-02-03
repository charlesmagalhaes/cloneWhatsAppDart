import 'package:flutter/material.dart';

class TelaMensagem extends StatefulWidget {
  TelaMensagemState createState() {
    return TelaMensagemState();
  }
}

class TelaMensagemState extends State<TelaMensagem> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cursos por Area"),  ),
      body: Column(children: [
                 Container(
            color: Colors.white,
            height: 370,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,                                             vertical:  8.0),
            
            )
           
           ),
        Container(
            color: Colors.black12,
            height: 50,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,                                             vertical:  8.0),
               child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       
                        Icon(Icons.check_circle, size: 18.0, color: Colors.green,),
                        Icon(Icons.attachment, size: 18.0, color: Colors.green,),
                       
                       
                       
                       ]               
                 
                 
                  ),
                 ),
              
          
                
    
              ),
          


      ]),
    );
  }
}


