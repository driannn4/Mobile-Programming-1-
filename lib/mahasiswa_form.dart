import 'package:flutter/material.dart';
import 'mahasiswa_detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});

  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final _formKey = GlobalKey<FormState>();
  final _nimCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Mahasiswa")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            nimField(),
            SizedBox(height: 10),
            namaField(),
            SizedBox(height: 10),
            alamatField(),
            SizedBox(height: 10),
            tombolSimpan(),
          ],
        ),
      ),
    );
  }

  // Widget untuk NIM
  Widget nimField() {
    return TextField(
      decoration: InputDecoration(labelText: "NIM"),
      controller: _nimCtrl,
    );
  }

  // Widget untuk Nama
  Widget namaField() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama"),
      controller: _namaCtrl,
    );
  }

  // Widget untuk Alamat
  Widget alamatField() {
    return TextField(
      decoration: InputDecoration(labelText: "Alamat"),
      controller: _alamatCtrl,
    );
  }

  // Widget Tombol Simpan
  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        // Navigasi ke halaman MahasiswaDetail dan mengirimkan data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MahasiswaDetail(
              nim: _nimCtrl.text,
              nama: _namaCtrl.text,
              alamat: _alamatCtrl.text,
            ),
          ),
        );
      },
      child: Text("Simpan"),
    );
  }
}
