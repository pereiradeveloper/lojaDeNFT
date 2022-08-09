import 'package:flutter/material.dart';
import 'package:loja_nft/animations/fade_animation.dart';
import 'package:loja_nft/widgets/blur_container.dart';

class NFTScreen extends StatelessWidget {
  const NFTScreen({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: image,
                  child: Image.asset(image),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: FadeAnimation(
                    intervalEnd: 0.1,
                    child: BlurContainer(
                      child: Container(
                        width: 160,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text(
                          "Arte NFT Digital",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "Monkey #271",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FadeAnimation(
                intervalStart: 0.35,
                child: Text(
                  "Propriedade de Matheus",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FadeAnimation(
                intervalStart: 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _InfoTile(title: "3d 5h 23m", subtitle: "Tempo Restante"),
                    _InfoTile(title: "16.7 BTC", subtitle: "Oferta Mais Alta"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            FadeAnimation(
              intervalStart: 0.6,
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff3000ff),
                ),
                child: FadeAnimation(
                  intervalStart: 0.8,
                  child: Text(
                    "Fazer Uma Oferta",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}
