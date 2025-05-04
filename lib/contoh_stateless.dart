import 'package:flutter/material.dart';

class ContohStateless extends StatelessWidget {
  final int counter; // karena stateless, harus final

  const ContohStateless({super.key, this.counter = 0}); // Constructor harus sama dengan nama class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Stateless"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // agar posisi di tengah
        children: [
          Text(
            "Nomor : $counter",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20), // beri jarak
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null, // Tetap null karena stateless
                child: Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text("Reset"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
