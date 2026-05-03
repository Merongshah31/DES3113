import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Individual Assignment1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );  
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Individual Assignment1'),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/assets/images/profile.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Norshahid saharudin',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                
                
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 16),
                const SizedBox(height: 2),

                const Text(
                  'Dob: 01 Jan 1990 ',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                
                

                const Text(
                  'Location: Kuala Lumpur',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),


                const Text(
                  'shahidsaharudin31@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const Text(
                  'contact me | 0123456789',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const Divider(),
                const SizedBox(height: 20),
                  const Text(
                    '"Keep learning, keep growing, and stay curious."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                  
                const Divider(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _ContactIcon(icon: Icons.email, label: 'Email'),
                      _ContactIcon(icon: Icons.phone, label: 'Phone'),
                      _ContactIcon(icon: Icons.location_on, label: 'State'),
                    ],
                  ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ContactIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

