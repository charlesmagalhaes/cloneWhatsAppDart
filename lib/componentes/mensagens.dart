
import 'package:clone_zapzap/telamensagem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget chatTile(String imgUrl, String userName, String msg, String date, bool seen){
  return InkWell(
    onTap: () async {

     
                    BuildContext context;
                                        Navigator.push(context,
        CupertinoPageRoute(
          builder: (context) {
            return TelaMensagem();
            
            }
            ));
            
            
   
    },
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(imgUrl),
           radius: 28.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(
                      userName, 
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        ), 
                        ),
                    
                    Text(date),
                  ],
                  ),
                  SizedBox(
                      height: 5.0,
                  ),
                   Row(
               
                  children: [
                    Expanded(child: Text(userName)),
                    if(seen) Icon(Icons.check_circle, size: 18.0, color: Colors.green,),
                    if(!seen) Icon(Icons.check_circle_outline, size: 18.0, color: Colors.grey,),
                 
                  ],
                  ),
                  Divider(),
                  
              ],

            )
            
            )
        ],
      ),
    ),
  );
}