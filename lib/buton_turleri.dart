import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.amber),
              ),
              child: Text("Text Button", style: TextStyle(fontSize: 24)),
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.blue;
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber;
                  }
                }),
              ),
              label: Text("TEXT BUTTON WİTH İCON"),
              icon: Icon(Icons.add),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Elevated Buton with icon"),
              icon: Icon(Icons.add),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.purple, width: 4),
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.pink.withOpacity(0.5),
                foregroundColor: Colors.amber,
              ),
              child: Text("Outlined Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              onLongPress: (){
                debugPrint("uzun basıldı");
                
              },
              label: Text("Outlined Button with icon"),
              icon: Icon(Icons.replay),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 4, color: Colors.cyanAccent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
