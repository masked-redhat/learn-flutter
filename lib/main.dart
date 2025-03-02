import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application 1',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: MainWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const users = [
      {
        'pfp': "image1.jpg",
        'name': "Aisha",
        'tagline': "Hopping through life!",
      },
      {'pfp': "image2.jpg", 'name': "Carlos", 'tagline': "Clever and quick."},
      {'pfp': "image1.jpg", 'name': "Mei", 'tagline': "Grace in every step."},
      {'pfp': "image2.jpg", 'name': "Jamal", 'tagline': "Strong and kind."},
      {'pfp': "image1.jpg", 'name': "Liam", 'tagline': "Loyal and fierce."},
      {'pfp': "image2.jpg", 'name': "Yuki", 'tagline': "Wisdom in the night."},
      {'pfp': "image1.jpg", 'name': "Elena", 'tagline': "Eyes on the prize."},
      {'pfp': "image2.jpg", 'name': "Raj", 'tagline': "Always on the move."},
      {
        'pfp': "image1.jpg",
        'name': "Fatima",
        'tagline': "Kindness is my strength.",
      },
      {'pfp': "image2.jpg", 'name': "Hiro", 'tagline': "Focused and fearless."},
      {'pfp': "image1.jpg", 'name': "Sofia", 'tagline': "Dreaming big."},
      {'pfp': "image2.jpg", 'name': "Arjun", 'tagline': "Brave at heart."},
      {'pfp': "image1.jpg", 'name': "Zara", 'tagline': "Always curious."},
      {'pfp': "image2.jpg", 'name': "Niko", 'tagline': "Adventure awaits."},
      {
        'pfp': "image1.jpg",
        'name': "Maya",
        'tagline': "Living life to the fullest.",
      },
      {'pfp': "image2.jpg", 'name': "Omar", 'tagline': "Steadfast and strong."},
      {
        'pfp': "image1.jpg",
        'name': "Leila",
        'tagline': "Radiating positivity.",
      },
      {'pfp': "image2.jpg", 'name': "Diego", 'tagline': "On a journey."},
      {'pfp': "image1.jpg", 'name': "Anika", 'tagline': "Spreading smiles."},
      {'pfp': "image2.jpg", 'name': "Kai", 'tagline': "Calm and collected."},
      {'pfp': "image1.jpg", 'name': "Isla", 'tagline': "Creating my story."},
      {'pfp': "image2.jpg", 'name': "Noah", 'tagline': "Chasing dreams."},
      {'pfp': "image1.jpg", 'name': "Amara", 'tagline': "Compassion first."},
      {'pfp': "image2.jpg", 'name': "Elias", 'tagline': "Driven by purpose."},
      {
        'pfp': "image1.jpg",
        'name': "Sana",
        'tagline': "Empathy leads the way.",
      },
      {'pfp': "image2.jpg", 'name': "Lucas", 'tagline': "Innovating always."},
      {
        'pfp': "image1.jpg",
        'name': "Nadia",
        'tagline': "Dancing through life.",
      },
      {
        'pfp': "image2.jpg",
        'name': "Jasper",
        'tagline': "Exploring the unknown.",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Chats", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage(
                  "assets/images/${users[index]['pfp']}",
                ),
              ),
              title: Text(
                "${users[index]['name']}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "${users[index]['tagline']}",
                style: TextStyle(fontSize: 14),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1),
                ),
                child: Icon(Icons.chevron_right),
              ),
            );
          },
          itemCount: 14,
        ),
      ),
    );
  }
}
