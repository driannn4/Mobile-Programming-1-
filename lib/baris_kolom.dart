import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> data = [
      ["Baris 1 - kolom 1", "Baris 1 - kolom 2", "Baris 1 - kolom 3"],
      ["Baris 2 - kolom 1", "Baris 2 - kolom 2", "Baris 2 - kolom 3"],
      ["Baris 3 - kolom 1", "Baris 3 - kolom 2", "Baris 3 - kolom 3"],
    ];

    final List<Color> colors = [
      Colors.teal.shade100,
      Colors.orange.shade100,
      Colors.purple.shade100,
      Colors.pink.shade100,
      Colors.green.shade100,
      Colors.blue.shade100,
      Colors.yellow.shade100,
      Colors.red.shade100,
      Colors.cyan.shade100,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adrian/19231716"),
        backgroundColor: const Color.fromARGB(255, 0, 204, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Ini Kolom & baris",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Kotak-kotak individual
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 kolom per baris
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final row = index ~/ 3;
                  final col = index % 3;
                  return Card(
                    color: colors[index],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Center(
                      child: Text(
                        data[row][col],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
