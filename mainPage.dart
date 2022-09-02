import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double sizeText = 25;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Good evening',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizeText,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: sizeText,
                    ),
                    Icon(
                      Icons.history,
                      color: Colors.white,
                      size: sizeText,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: sizeText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TopWidgets(exText: "Music", widthText: 80),
                    SizedBox(
                      width: 10,
                    ),
                    TopWidgets(exText: "Podcasts & Shows", widthText: 150),
                  ],
                ),
                playlistHeaderText(headerText: 'Recently played', hofBox: 45),
                horizontalScroll(
                  imgS1:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.BoEXWJDEM48cP3GwQvtDDQHaHT%26pid%3DApi&f=1',
                  imgS2:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.hErE6gZ7j5i0jGIRqJpeEAHaHa%26pid%3DApi&f=1',
                  imgS3:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Fhh3lGDL9F6qH729PFjvTQHaIA%26pid%3DApi&f=1',
                  imgS4:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.P_SFMN6Iv4pwsoH3kMZCrwHaHa%26pid%3DApi&f=1',
                  subT1: 'My Playlist #11',
                  subT2: 'Whole Lotta Red',
                  subT3: 'Lancey and Yeat',
                  subT4: 'Yeat',
                  hImg: 150,
                  wImg: 140,
                ),
                playlistHeaderText(headerText: 'Your top mixes', hofBox: 40),
                horizontalScroll(
                  hImg: 175,
                  wImg: 155,
                  imgS1:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.tDGLX7F3oCSIlMPOhZ5FUwHaEK%26pid%3DApi&f=1',
                  subT1: 'Yeat Mix',
                  imgS2:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.cA2gFECQUCUaACOqPuiYXAHaEK%26pid%3DApi&f=1',
                  subT2: 'Playboi Carti Mix',
                  imgS3:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.C5myksVVLHfzxVt-hdb7bQHaFj%26pid%3DApi&f=1',
                  subT3: 'Kanye West Mix',
                  imgS4:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.C7OpgG0YzWEwMWSk2M-BLAHaFj%26pid%3DApi&f=1',
                  subT4: 'Scandal Mix',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget TopWidgets({required String exText, required double widthText}) {
  return Container(
    height: 30,
    width: widthText,
    child: Center(
      child: Text(
        exText,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    ),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 75, 73, 73),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

Widget playlistHeaderText(
    {required String headerText, required double hofBox}) {
  return Column(
    children: [
      SizedBox(
        height: hofBox,
      ),
      Text(
        headerText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 25,
      ),
    ],
  );
}

Widget recentPlaylist(
    {required String source,
    required String subText,
    required double widthImg,
    required double heightImg}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: widthImg,
        height: heightImg,
        child: Image.network(
          source,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 9,
      ),
      Text(
        subText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

Widget horizontalScroll(
    {required String imgS1,
    required String subT1,
    required String imgS2,
    required String subT2,
    required String imgS3,
    required String subT3,
    required String imgS4,
    required String subT4,
    required double hImg,
    required double wImg}) {
  return SingleChildScrollView(
    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        recentPlaylist(
            source: imgS1, subText: subT1, heightImg: hImg, widthImg: wImg),
        SizedBox(
          width: 15,
        ),
        recentPlaylist(
            source: imgS2, subText: subT2, heightImg: hImg, widthImg: wImg),
        SizedBox(
          width: 15,
        ),
        recentPlaylist(
            source: imgS3, subText: subT3, heightImg: hImg, widthImg: wImg),
        SizedBox(
          width: 15,
        ),
        recentPlaylist(
            source: imgS4, subText: subT4, heightImg: hImg, widthImg: wImg),
        SizedBox(
          width: 15,
        ),
      ],
    ),
  );
}
