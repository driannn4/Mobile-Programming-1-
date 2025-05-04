import 'package:flutter/material.dart';

class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Stateful"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Tambahan agar konten lebih ke tengah
        children: [
          Text(
            "Nomor : $counter",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20), // Tambahkan jarak antara teks dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
