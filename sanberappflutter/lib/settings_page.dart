import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/app/config/circularIconButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 40, bottom: 94),
          child: Column(
            children: [
              // Header Row
              Row(
                children: [
                  CircularIconButton(onPressed: () {}),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(AppAssets.searchIcon),
                  ),
                ],
              ),
              SizedBox(height: 34),

              // Settings Section
              _buildSectionTitle("Settings"),
              const SizedBox(height: 28),
              _buildSettingsItem(
                  AppAssets.personIcon, "Profile settings", "Settings regarding your profile"
              ),
              const SizedBox(height: 20),
              _buildSettingsItem(
                  AppAssets.newsIcon, "News settings", "Choose your favourite topics"
              ),
              const SizedBox(height: 20),
              _buildSettingsItem(
                  AppAssets.notifIcon, "Notifications", "When would you like to be notified"
              ),
              const SizedBox(height: 20),
              _buildSettingsItem(
                  AppAssets.fileIcon, "Subscriptions", "Currently, you are in Starter Plan"
              ),

              const SizedBox(height: 30),

              // Other Section - Teks berada di kiri
              _buildSectionTitle("Other"),
              const SizedBox(height: 24),
              _buildSettingsItem(
                  AppAssets.bugIcon, "Bug report", "Report bugs very easy"
              ),
              const SizedBox(height: 24),
              _buildSettingsItem(
                  AppAssets.shareIcon, "Share the app", "Share on social media networks"
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk judul section dengan teks di kiri
  Widget _buildSectionTitle(String title) {
    return Row( // Menggunakan Row untuk posisi kiri
      mainAxisAlignment: MainAxisAlignment.start, // Teks akan berada di kiri
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
      ],
    );
  }

  // Fungsi untuk setiap item pengaturan
  Widget _buildSettingsItem(String iconPath, String title, String subtitle) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffECEDEE),
          ),
          width: 56,
          height: 56,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Image.asset(iconPath),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        Center(
          child: Container(
            width: 16,
            height: 16,
            child: Image.asset(AppAssets.arrowIcon),
          ),
        ),
      ],
    );
  }
}
