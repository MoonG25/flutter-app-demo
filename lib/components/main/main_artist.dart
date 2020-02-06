import 'package:bone_app/models/artist.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainArtist extends StatelessWidget {

  List<Artist> _artistList = [];

  MainArtist() {
    _artistList.add(new Artist('djak_kim', 'https://www.instagram.com/djak_kim/', 'assets/images/artist_1.webp'));
    _artistList.add(new Artist('mewloud.rar', 'https://www.instagram.com/mewloud.rar/', 'assets/images/artist_2.webp'));
    _artistList.add(new Artist('krein_hak', 'https://www.instagram.com/krein_hak/', 'assets/images/artist_3.webp'));
    _artistList.add(new Artist('taeyoonosway', 'https://www.instagram.com/taeyoonosway/', 'assets/images/artist_4.webp'));
    _artistList.add(new Artist('tride__dj', 'https://www.instagram.com/tride__dj/', 'assets/images/artist_5.webp'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Row(
        children: _artistList.map((artist) => Expanded(
          child: GestureDetector(
            child: Image.asset(
              artist.image,
            ),
            onTap: () => launch(artist.href)),
          ),
        ).toList()
      ),
    );
  }
}
