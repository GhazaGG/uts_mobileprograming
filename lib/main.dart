import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Ghaza Gymnastiar';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
        child: Column(
        children: [
          ImageSection(
          image: 'images/ghaza.jpg',
          ),
          TitleSection(
          name: 'Nama',
          location: 'Ghaza Gymnastiar',
          ),
          TitleSection(
          name: 'Nim',
          location: 'STI202102370',
          ),
          TitleSection(
          name: 'alamat',
          location: 'Purbalingga Kecamatan Kalimanah Desa Purbalingga',
          ),
          TitleSection(
          name: 'Tanggal lahir',
          location: '12 April 2002',
          ),
        ]))
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );
  }
}


class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 400,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}
