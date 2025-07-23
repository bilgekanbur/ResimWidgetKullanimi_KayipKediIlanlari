import 'package:flutter/material.dart';

class ResimWidgetler extends StatelessWidget {
  ResimWidgetler({super.key});
  var url =
      "https://hips.hearstapps.com/hmg-prod/images/large-cat-breed-maine-coon-1553270773.jpg";
  var url2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt8BCFzn7K_vZ86SAXyRh7f7tYjd4al7lL7tCqWaVR7SMk_jz6EyuFZjxDj5SE_TOGDic&usqp=CAU0";

  var url3 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoJtOn5gyW81kWToellszzxWObkGXQQL8m-w&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kayıp Kedi İlan Sayfası")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset("assets/images/cat.jpg", fit: BoxFit.cover),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(
                                  "Kayıp kedimizi arıyoruz",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "İsim: Mırnav",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Bulanlara ödül verilecektir.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Expanded(child: Placeholder(color: Colors.pink)),
              Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(url3),
                      radius: 75,
                    ),
                  ),
                  const Expanded(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Cat03.jpg"),
                      radius: 75,
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.pink,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(url, fit: BoxFit.cover),

                        //FadeInImage.assetNetwork(placeholder: "assets/images/cat.jpg", image: url),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: Colors.black54,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(
                                    "Kayıp kedimizi arıyoruz",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "İsim:Tombuş",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Bulanlara ödül verilecektir.",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.pink,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(url2, fit: BoxFit.cover),
                        FadeInImage.assetNetwork(
                          placeholder: "assets/images/cat.jpg",
                          image: url2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: Colors.black54,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(
                                    "Kayıp kedimizi arıyoruz",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "İsim:Pamuk",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Bulanlara ödül verilecektir.",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
