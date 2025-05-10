import 'package:flutter/material.dart';
import 'dart:ui';
import 'widget/mini_stat_card.dart';
import '/widget/animated_dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparan untuk AppBar
        elevation: 0,
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xAA673AB7), // Ungu lebih gelap (bagian bawah body)
                    Color(0xAA4A148C), // Ungu muda cerah (bagian atas body)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
        title: Icon(
          Icons.auto_awesome,
          size: 30,
          color: Colors.white, // Warna ikon AppBar putih
        ),
        centerTitle: true,
        actions: [
          // Ganti ikon kanan jadi ikon project seperti assignment
          IconButton(
            icon: const Icon(Icons.assignment, color: Colors.pinkAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3A0CA3), // Ungu terang (bagian atas body)
              Color(0xFF1E1F28), // Biru gelap (bagian bawah body)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Halo, Drian 🙌🏻',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Semoga harimu produktif! Ini ringkasan aktivitasmu hari ini.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MiniStatCard(
                      title: 'Total Tugas',
                      value: '12',
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                    MiniStatCard(
                      title: 'Hari Aktif',
                      value: '27',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Aktivitas Kamu',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(fontSize: 14, color: Colors.lightBlueAccent, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: const [
                    SizedBox(
                      width: 160,
                      child: AnimatedDashboardCard(
                        icon: Icons.check_circle_outline,
                        title: 'Tugas',
                        subtitle: '10 selesai',
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: AnimatedDashboardCard(
                        icon: Icons.schedule,
                        title: 'Jadwal',
                        subtitle: '2 kegiatan',
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: AnimatedDashboardCard(
                        icon: Icons.message_outlined,
                        title: 'Pesan',
                        subtitle: '5 baru',
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: AnimatedDashboardCard(
                        icon: Icons.health_and_safety,
                        title: 'Kesehatan',
                        subtitle: 'Check-up rutin',
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                const Text(
                  'Tips Hari Ini ✨',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 12),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: const Text(
                    'Mulailah hari dengan menyelesaikan 1 tugas kecil. Ini membantu momentum kamu tetap positif!',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
