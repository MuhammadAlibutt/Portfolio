import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  Future<void> _launchURL(String url) async {
    final uri = Uri.parse("https://www.linkedin.com/in/muhammadali-arif/");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // can't launch url
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              child: ShaderMask(
                shaderCallback: (react) {
                  return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, react.width, react.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image(
                  image: AssetImage(
                    'assets/images/mypic.png',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.56),
              child: Column(
                children: [
                  Text(
                    "Hello! I am",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Muhammad Ali Butt",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mobile Application Developer',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.amber, primary: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://www.linkedin.com/in/muhammadali-arif/',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://www.instagram.com/mr.ali.here/',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://github.com/MuhammadAlibutt',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://web.facebook.com/muhammadaliarif.butt',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
