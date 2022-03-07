import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/dot_slider.dart';
import 'package:nft_marketplace/components/theme.dart';
import 'package:nft_marketplace/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  _navigateHome(context) {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
          ),
          Image.asset('assets/images/bg_img_1.png'),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: 400,
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const DotSlider(),
                    const SizedBox(height: 40),
                    const Text(
                      "Discover Rare Collectibles",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.dark,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Buy and Sell Rare Collectibles from Top Artists.",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.dark,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppTheme.primary,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                        onPressed: () {
                          _navigateHome(context);
                        },
                        child: const Text("Explore NFTs",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
