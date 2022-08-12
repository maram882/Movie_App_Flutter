import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/Action.dart';

void main() => runApp(MaterialApp(
      home: MovieApp(),
    ));

class MovieApp extends StatefulWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF1B2C3B),
        title: Text("Movie App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.white24,
                          fixedSize: const Size(80, 80),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('All',style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Actionn()));
                      },)
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Action'),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Actionn()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(100, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Adventure'),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Actionn()));
                      },),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Comedy'),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Actionn()));
                      },)
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Drama'),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Actionn()));
                      },),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.white24,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Top Action",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Spirited Away", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-1a03ccf2b3813d93f23f40dfc013713e-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Demon Slayer", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-55f78cb4b249a7a4458114b13ac85dad-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Your Name", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-ce04e99f063a1d748fb02a54d8ebafb8-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Spirited Away", "8.5/10",
                        "https://image.winudf.com/v2/image1/Y29tLnR5Z29wYW5kZXIub3dhcmlub3NlcmFwaHdhbGxwYXBlcnNfc2NyZWVuXzFfMTYyMTE1ODY2M18wNDY/screen-1.jpg?h=355&fakeurl=1&type=.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.white24,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Top Adventure",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Spirited Away", "7.5/10",
                        "https://i0.wp.com/www.monstersandcritics.com/wp-content/uploads/2021/07/The-Case-Study-of-Vanitas-Anime-Key-Visual-2021-921x1300.jpg?resize=780%2C1101&ssl=1"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Your Name", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-ce04e99f063a1d748fb02a54d8ebafb8-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10",
                        "https://m.media-amazon.com/images/M/MV5BNzc5MTczNDQtNDFjNi00ZDU5LWFkNzItOTE1NzQzMzdhNzMxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Demon Slayer", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-55f78cb4b249a7a4458114b13ac85dad-lq"),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.white24,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Top Comedy",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Your Name", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-ce04e99f063a1d748fb02a54d8ebafb8-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Spirited Away", "7.5/10",
                        "https://i0.wp.com/www.monstersandcritics.com/wp-content/uploads/2021/07/The-Case-Study-of-Vanitas-Anime-Key-Visual-2021-921x1300.jpg?resize=780%2C1101&ssl=1"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Demon Slayer", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-55f78cb4b249a7a4458114b13ac85dad-lq"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10",
                        "https://qph.cf2.quoracdn.net/main-qimg-1a03ccf2b3813d93f23f40dfc013713e-lq"),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget MovieCard(String movieName, String rate, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Flexible(
          child: Card(
            elevation: 0.0,
            child: Image.network(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 5.0),
        Text(
          rate,
          style: TextStyle(color: Colors.orangeAccent, fontSize: 18.0),
        ),
      ],
    ),
  );
}
