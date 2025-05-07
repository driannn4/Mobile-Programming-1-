import 'package:flutter/material.dart';
import '../models/mata_kuliah.dart';
import 'detail_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahController = TextEditingController();
  final _sksController = TextEditingController();
  final _semesterController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final mataKuliah = MataKuliah(
        mataKuliah: _mataKuliahController.text,
        sks: int.parse(_sksController.text),
        semester: _semesterController.text,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(data: mataKuliah),
        ),
      );
    }
  }

  @override
  void dispose() {
    _mataKuliahController.dispose();
    _sksController.dispose();
    _semesterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Icon(Icons.school, size: 80, color: Colors.deepPurple),
                      const SizedBox(height: 16),
                      const Text("Form Mata Kuliah",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          )),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: _mataKuliahController,
                        decoration: const InputDecoration(
                          labelText: "Mata Kuliah",
                          prefixIcon: Icon(Icons.book),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? "Tidak boleh kosong" : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _sksController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "SKS",
                          prefixIcon: Icon(Icons.numbers),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? "Tidak boleh kosong" : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _semesterController,
                        decoration: const InputDecoration(
                          labelText: "Semester",
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? "Tidak boleh kosong" : null,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: _submitForm,
                        icon: const Icon(Icons.send),
                        label: const Text("Kirim"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 32,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
