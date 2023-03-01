import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  list({String? title, IconData? leading, Widget? trailing}) {
    return ListTile(
      leading: Icon(leading),
      title: Text(
        title!,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      trailing: trailing,
    );
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: Text(
          'Additional Information',
          style: GoogleFonts.montserrat(
              textStyle:
                  const TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          list(
              title: "Share Dukaan App",
              leading: Icons.share_outlined,
              trailing: const Icon(Icons.arrow_forward_ios_outlined)),
          list(
              title: "Change Language",
              leading: Icons.translate,
              trailing: const Icon(Icons.arrow_forward_ios_outlined)),
          list(
              title: "WhatsApp Chat Support",
              leading: Icons.whatsapp,
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                   isSwitched=value ;
                  });
                },
              )),
          list(title: "Privacy Policy", leading: Icons.lock_outline),
          list(title: "Rate Us", leading: Icons.star_outline),
          list(title: "Sign Out", leading: Icons.logout),
          const SizedBox(height: 230),
          const Text('Version',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 206, 204, 204))),
          const Text('2.4.2',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey))
        ],
      )),
    );
  }
}
