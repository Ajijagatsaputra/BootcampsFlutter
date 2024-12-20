import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 40,
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.asset('assets/homePage/menu.png'),
            ),
          ),
          onPressed: () {
            // do something
          },
        ),
        centerTitle: true,
        title: Text(
          "NewsApp",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 311,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildFeaturedNewsCard('assets/homePage/Mask.png'),
                  const SizedBox(width: 8),
                  _buildFeaturedNewsCard('assets/homePage/Mask.png'),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest News',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  child: Image.asset('assets/homePage/arrow.png'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildLatestNewsItem(
                      'assets/homePage/Image.png',
                      'TECHNOLOGY',
                      'Insurtech startup \nPasarPolis gets \$54 \nmillion — Series B'),
                  const SizedBox(height: 24),
                  _buildLatestNewsItem(
                      'assets/homePage/Image2.png',
                      'TECHNOLOGY',
                      'The IPO parade \ncontinues as Wish \nfiles, Bumble targets'),
                  const SizedBox(height: 24),
                  _buildLatestNewsItem(
                      'assets/homePage/Image3.png',
                      'TECHNOLOGY',
                      'Hypatos gets \n\$11.8M for a deep \nlearning approach'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedNewsCard(String imagePath) {
    return Container(
      width: 311,
      height: 311,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'TECHNOLOGY',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Text(
                  '3 min ago',
                  style: GoogleFonts.poppins(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'Microsoft launches a \ndeepfake detector tool \nahead of US election',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 13),
            Row(
              children: [
                Image.asset('assets/homePage/chat.png', width: 24, height: 24),
                const SizedBox(width: 16),
                Image.asset(
                    'assets/homePage/bookmark.png', width: 24, height: 24),
                const Spacer(),
                Image.asset('assets/homePage/share.png', width: 24, height: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestNewsItem(
      String imagePath, String category, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
