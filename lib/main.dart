import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
      
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
    actions: [
      Icon(Icons.search),
      Icon(Icons.settings)
    ],
    centerTitle: true,
    title: Text("First App"),
    backgroundColor: Colors.blueGrey,
    leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
  ),
  body: Center(
    child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      child: Text(
        "Tree Images",
        style: TextStyle(
          fontFamily: "first",
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage("tree.jpg"),
        fit: BoxFit.cover),
      ),
    ),
  )
  // Image.network("https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
  // width: 150,
  // height: 150,
  // fit: BoxFit.cover,)

  //Image.asset("tree.jpg")
  );
  }
}