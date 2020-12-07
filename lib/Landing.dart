import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var name, cover_url, game_name;

class Landing extends StatefulWidget {
  //http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all

  @override
  _LandingState createState() => _LandingState();
/*Landing(mail, pass) {
    email = mail;
    passwrd = pass;
  }*/
}

class _LandingState extends State<Landing> {
  Future<void> getData() async {
    var res = await http.get(
        "http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all");
    var response = jsonDecode(res.body);

    setState(() {
      name = response["name"];
      cover_url = response["cover_url"];
      game_name = response["game_name"];
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
