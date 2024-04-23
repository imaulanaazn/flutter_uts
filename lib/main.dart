import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        // #docregion addWidget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: AssetImage('images/irham.jpg'),
              ),
              PageTitle(),
              TitleSection(
                name: 'Irham Maulana',
                location: 'Mahasiswa',
              ),
              TextSection(
                description:
                    'Seorang mahasiswa semester 6 jurusan teknik informatika '
                    'di Sekolah Tinggi Managemen Informatika Widya Utama.'
                    'Programming merupakan '
                    'hobi dan keahlian yang dimilikinya. menjadi seorang '
                    'fullstack developer menjadi mimpinya semenjak 2021 '
                    'Lulus dari SMK YPT 2 Purbalingga dengan jurusan Teknik Audio Video '
                    'yang mana tidak linier dengan jurusan yang saat ini dijalaninya',
              ),
              BiodataSection(),
              ButtonSection(),
            ],
          ),
        ),
        // #enddocregion addWidget
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Biodata Mahasiswa',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Name section with icon
        ],
      ),
    );
  }
}

// Define a new?

class BiodataSection extends StatelessWidget {
  const BiodataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Biodata',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Name section with icon
          Row(
            children: [
              Icon(
                Icons.person,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Nama: Irham Maulana',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 5),
          // Email section with icon
          Row(
            children: [
              Icon(Icons.email, size: 20),
              SizedBox(width: 8),
              Text(
                'Email: i.maulana.azn@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 5),
          // Phone section with icon
          Row(
            children: [
              Icon(Icons.phone, size: 20),
              SizedBox(width: 8),
              Text(
                'No Telp: +628895501350',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Education section with icon
          Row(
            children: [
              Align(alignment: Alignment.center),
              Icon(Icons.school, size: 20),
              SizedBox(width: 8),
              Text(
                'Pendidikan:',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Text(
            'STMIK Widya Utama',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          // Experience section with icon
          Row(
            children: [
              Icon(Icons.work, size: 20),
              SizedBox(width: 8),
              Text(
                'Experience:',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Text(
            'Software Engineer Tokopedia amiin',
            style: TextStyle(fontSize: 16),
          ),
        ],
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
                  padding: const EdgeInsets.only(bottom: 8),
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
          // #docregion Icon
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          // #enddocregion Icon
          const Text('3.51'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      color: const Color.fromARGB(255, 187, 251, 202),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Color.fromARGB(255, 3, 128, 67),
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: Color.fromARGB(255, 3, 128, 67),
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: Color.fromARGB(255, 3, 128, 67),
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    ));
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        )));
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

// #docregion ImageSection
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
    // #enddocregion Image-asset
  }
}
// #enddocregion ImageSection

// #docregion FavoriteWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  double _favoriteCount = 3.1;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Contact: johndoe@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +1 123-456-7890',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Education:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'BSc in Computer Science, ABC University',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Experience:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Software Engineer at XYZ Company',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
