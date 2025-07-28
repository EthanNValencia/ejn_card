import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethan J. Nephew',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sans',
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      home: const BusinessCard(),
    );
  }
}



class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            color: Colors.grey[850],
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: 600,
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/avatar.png'), // Add your image to assets
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Ethan J. Nephew',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Family and Community\nEngagement Advocate',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.tealAccent,
                    ),
                  ),
                  const Divider(
                    height: 32,
                    thickness: 1,
                    color: Colors.white24,
                    indent: 40,
                    endIndent: 40,
                  ),
                  ContactInfoRow(
                    icon: Icons.email,
                    text: 'ethan.nephew@lsfnet.org',
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'ethan.nephew@lsfnet.org',
                        query: Uri.encodeFull('subject=Hello&body=Hi Ethan, this is'), // optional
                      );
                      if (await canLaunchUrl(emailUri)) {
                        await launchUrl(emailUri);
                      } else {
                        debugPrint('Could not launch email client');
                      }
                    },
                  ),
                  const SizedBox(height: 8),
                  ContactInfoRow(
                      icon: Icons.phone,
                      text: '727-744-5151',
                      onTap: () async {
                        final Uri phoneUri = Uri(scheme: 'tel', path: '7277445151');
                        if (await canLaunchUrl(phoneUri)) {
                          await launchUrl(phoneUri);
                        }}
                  ),


                  /*
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white70),
                      SizedBox(width: 16),
                      Icon(Icons.linked_camera, color: Colors.white70),
                      SizedBox(width: 16),
                      Icon(Icons.alternate_email, color: Colors.white70),
                    ],
                  )
                  */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const ContactInfoRow({super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 8),
            Text(text),
          ],
        ),
      ],
      )


    );
  }
}

