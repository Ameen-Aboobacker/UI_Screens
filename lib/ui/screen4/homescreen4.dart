import 'package:ui_samples/ui/screen4/widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:ui_samples/ui/screen4/expansion_tile.dart';

class Screen4 extends StatelessWidget {
  Screen4({super.key});

  final _youtubeController = YoutubePlayerController(
    flags: const YoutubePlayerFlags(
      controlsVisibleAtStart: true,
      autoPlay: false,
    ),
    initialVideoId: 'FQdnnJ0Sdcg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dukaan Premium ',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
             Container(
                width: double.infinity,
                height: 30,
                color: Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 257,
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/dukaan premium.jpg'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Get Dukaan Premium For Just',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '₹4,999/year',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'All the advanced features for scaling your\nbusiness',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Features',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                listTile(
                  leadingIcon: Icons.language_outlined,
                  title: 'Custom domain name',
                  subtitle:
                      'Get your own custom domain and build your brand on the internet.',
                ),
                listTile(
                  leadingIcon: Icons.verified_outlined,
                  title: 'Verified seller badge',
                  subtitle:
                      'Get green verified badge under your store name and build trust.',
                ),
                listTile(
                  leadingIcon: Icons.computer_outlined,
                  title: 'Dukaan for PC',
                  subtitle:
                      'Access all the exclusive premium features on Dukaan for PC.',
                ),
                listTile(
                  leadingIcon: Icons.headphones_outlined,
                  title: 'Priority Support',
                  subtitle:
                      'Get your questions resolved with our priority  custom support',
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'What is Dukaan Premium',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                YoutubePlayer(
                  progressIndicatorColor: Colors.red,
                  controller: _youtubeController,
                  controlsTimeOut: const Duration(seconds: 0),
                  showVideoProgressIndicator: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Text(
                      'Frequently Asked Questions',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                expansionTile(
                  title: 'What types of businesses can use Dukaan Premium?',
                ),
                expansionTile(
                  title: 'What is your refund policy?',
                ),
                expansionTile(
                  title:
                      'Will there be an automatic change after the paid trial?',
                ),
                expansionTile(
                  title: 'what payment methords do you offer?',
                ),
                expansionTile(
                  title: 'What are the terms for the custom domain?',
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: const [
                    Text(
                      'Need help? Get in Touch',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 120,
                  ),
                  children: [
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.message_outlined,
                            size: 40,
                          ),
                          Text(
                            'Live Chat',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.phone_enabled_outlined,
                            size: 40,
                          ),
                          Text(
                            'Phone Call',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Select Domain',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Get Premium',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
