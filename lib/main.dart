import 'package:flutter/material.dart';

void main() {
  runApp(TasbihApp());
}

class TasbihApp extends StatefulWidget {
  const TasbihApp({super.key});

  @override
  State<TasbihApp> createState() => _TasbihAppState();
}

class _TasbihAppState extends State<TasbihApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tasbhi Counter"),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Text likhbo ja ja porbo

               Text("لآ اِلَهَ اِلّا اللّهُ مُحَمَّدٌ رَسُوُل اللّهِ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
               SizedBox(height: 20),
               Text("    سبحان الله", style: TextStyle(fontSize: 16)),
               SizedBox(height: 20,),
               Text("    ٱلْحَمْدُ لِلَّٰهِ", style: TextStyle(fontSize: 16)),
               SizedBox(height: 20,),
               Text("    الله أكبر", style: TextStyle(fontSize: 16)),
               SizedBox(height: 50),

              // Count korbe
              Text(
                "Count : $count",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),

              SizedBox(height: 40),

              // button e click korle count suru hobe
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                    child: Text("Add"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (count > 0) count--;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                    child: Text("Remove"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
