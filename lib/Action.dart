import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Actionn extends StatefulWidget {
  const Actionn({Key? key}) : super(key: key);

  @override
  State<Actionn> createState() => _ActionState();
}

class _ActionState extends State<Actionn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF1B2C3B),
        title: Text("Action Area"),
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
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Recommended For You",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 5,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.white24,
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
                      child: Movie_Card("Suzume no Tojimari", "9/10",
                          "https://upload.wikimedia.org/wikipedia/en/7/7f/Suzume_no_Tojimari_poster.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Movie_Card("Bubble (2022 film)", "7.5/10",
                          "https://upload.wikimedia.org/wikipedia/en/0/06/Bubble_film_poster.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Movie_Card("One Piece Film: Red", "9.8/10",
                          "https://m.media-amazon.com/images/M/MV5BNDBhM2IxMzItOTdmZi00NmMzLWFlNTgtN2E2MDRjODU4NzEzXkEyXkFqcGdeQXVyODMyNTM0MjM@._V1_FMjpg_UX1000_.jpg"),
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
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Movie_Card("Owari no seraph", "9/10",
                        "https://image.winudf.com/v2/image1/Y29tLnR5Z29wYW5kZXIub3dhcmlub3NlcmFwaHdhbGxwYXBlcnNfc2NyZWVuXzFfMTYyMTE1ODY2M18wNDY/screen-1.jpg?h=355&fakeurl=1&type=.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Movie_Card("Attack on titan", "7.5/10",
                        "https://m.media-amazon.com/images/M/MV5BNzc5MTczNDQtNDFjNi00ZDU5LWFkNzItOTE1NzQzMzdhNzMxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Movie_Card("Vanitas no carte", "9.8/10",
                        "https://i0.wp.com/www.monstersandcritics.com/wp-content/uploads/2021/07/The-Case-Study-of-Vanitas-Anime-Key-Visual-2021-921x1300.jpg?resize=780%2C1101&ssl=1"),
                  ),
                  ],
                ),
              ),
              
                ],
              )
            
          ));
    
  }
}

Widget Movie_Card(String movieName, String rate, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Card(
          elevation: 0.0,
          child: Image.network(
            imgPath,
            fit: BoxFit.fill,
            width: 130.0,
            height: 160.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),
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
