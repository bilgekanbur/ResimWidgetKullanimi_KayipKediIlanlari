import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/buton_turleri.dart';
import 'package:flutter_application_3/resim_widgetler.dart';

void main() {
  debugPrint("main methodu tetiklendi");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build methodu tetiklendi");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        textTheme: TextTheme(titleMedium: TextStyle(fontSize: 20)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
        primarySwatch: Colors.pink,
      ),
      home: ResimWidgetler(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _sayac = 0;

  void _sayaciArttir() {
    setState(() {
      _sayac++;
      debugPrint("sayacın şu anki değeri $_sayac");
    });
  }

  void _sayaciAzalt() {
    setState(() {
      _sayac--;
      debugPrint("sayacın şu anki değeri $_sayac");
    });
  }

  void _sayaciSifirla() {
    setState(() {
      _sayac = 0;
      debugPrint("sayacın şu anki değeri $_sayac");
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage  build methodu tetiklendi");
    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basılma sayısı:",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: _sayac < 0 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayaciArttir();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              _sayaciAzalt();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              _sayaciSifirla();
            },
            child: Icon(Icons.replay_outlined),
          ),
        ],
      ),
    );
  }
}
