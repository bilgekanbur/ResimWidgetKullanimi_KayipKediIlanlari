import 'package:flutter/material.dart';

class DropdownPopupMenu extends StatelessWidget {
  const DropdownPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown ve Popup"),
        actions: [PopupMenuKullanimi()],
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          children: [DropDownButtonKullanimi(), PopupMenuKullanimi()],
        ),
      ),
    );
  }
}

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  var _secilenSehir;
  final _sehirler = ["Ankara", "Bursa", "Erzurum", "Eskişehir"];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("Şehir Seçiniz"),
      value: _secilenSehir,
      items: _sehirler
          .map(
            (String sehir) =>
                DropdownMenuItem(value: sehir, child: Text(sehir)),
          )
          .toList(),

      // items: [
      //   DropdownMenuItem(child: Text("Ankara"), value: "Ankara"),
      //   DropdownMenuItem(child: Text("İzmir"), value: "İzmir"),
      //   DropdownMenuItem(child: Text("İstanbul"), value: "İstanbul"),
      // ],
      onChanged: (value) {
        debugPrint("seçilen şehir $value");
        setState(() {
          _secilenSehir = value!;
        });
      },
    );
  }
}

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  var _secilenSehir = "Ankara";
  final List<String> _sehirler = ["İstanbul", "Ankara", "İzmir", "Bursa"];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: _secilenSehir,
      //child: Text(_secilenSehir),
      itemBuilder: (context) {
        return _sehirler.map((String sehir) {
          return PopupMenuItem(child: Text(sehir), value: sehir);
        }).toList();
      },
      onSelected: (value) {
        setState(() {
          _secilenSehir = value;
        });
      },
    );
  }
}
