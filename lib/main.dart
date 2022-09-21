import 'package:flutter/material.dart';
import 'package:navigation_example/lastPage.dart';
import 'package:navigation_example/secondPage.dart';
import 'package:navigation_example/settingPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,

      title: 'Material App',
      routes: {
        '/':(context)=>HomeWidget(),
        '/secondPage':(context)=>SecondPage(),
        '/lastPage':(context)=>LastPage(),
       '/settingPage':(context) => SettingPage(),
      },
      initialRoute: '/',
      );
   
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed('/settingPage');
          }, icon: Icon(Icons.settings))
        ],
        title: const Text('Navigation Practise'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          Text("Home Page",style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
          SizedBox(height: 50,),
          ElevatedButton(
            
            onPressed: (){
            Navigator.of(context).pushNamed('/secondPage');


          }, child: Text("2nd Page"))
        ],),
      ),
      );
  }
}