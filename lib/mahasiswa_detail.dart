import 'package:flutter/material.dart';

class MahasiswaDetail extends StatelessWidget {
  final String nim;
  final String nama;
  final String alamat;

  // Konstruktor untuk menerima data
  const MahasiswaDetail({
    super.key,
    required this.nim,
    required this.nama,
    required this.alamat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Mahasiswa")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("NIM: $nim", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Nama: $nama", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Alamat: $alamat", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
