import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.red),

      ) ,
      home: SimpleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SimpleScreen extends StatefulWidget {
  @override
  _SimpleScreenState createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
 

 
  var emailText=TextEditingController();
  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text("Flutter development"),
      ),
      body:Center(
        child:Container(
          width: 300,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(

                controller: emailText,
                
                decoration: InputDecoration(
                   hintText:'Enter email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 2,
                    ),

                  ),
                 enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(21),
                  borderSide:BorderSide(
                    color:Colors.green,
                    width: 2,

                  )
                 ),
                 disabledBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(21),
                  borderSide:BorderSide(
                    color:Colors.purple,
                    width: 2,
                  )
                 ),
                 //suffixText: "usenameexist",
                 suffixIcon: IconButton(
                  
                  icon: Icon(Icons.remove_red_eye),
                  splashColor: Colors.teal,
                  color:Colors.green,
                  
                  onPressed:(){},
                 ),
                 prefixIcon:Icon(Icons.email,color:Colors.orange),
                  
                  

                 
                  

                ),

              ),
              Container(height: 20),
              TextField(
                obscureText:true ,
                obscuringCharacter:'*' ,
                controller:password,
                decoration:InputDecoration(
                  hintText:'Enter password',
                 
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(21),
                    borderSide:BorderSide(
                      color: Colors.red,
                    ) 
                  ) 
                ) ,
              ),
              Container(height:11,),
             
             
              ElevatedButton(
              style: ElevatedButton.styleFrom(
    backgroundColor:  Colors.blue, // Background color
   // Text (foreground) color
  ),
                onPressed:(){} ,
                 child:Text("login",
                 ),
                
              ),
              
              
              
            ],
          )
        )
      )

    );
  }
  }