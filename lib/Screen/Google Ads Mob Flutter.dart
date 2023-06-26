import 'package:flutter/material.dart';
import 'package:com.google.adsmobflutter/Screen/Google%20banner%20ads.dart';
import 'package:com.google.adsmobflutter/Screen/Google%20interstitial%20ads.dart';
import 'Google native ads.dart';
import 'Google revode ads.dart';

class Google_Ads_Mob_Flutter extends StatefulWidget {
  const Google_Ads_Mob_Flutter({Key? key}) : super(key: key);

  @override
  State<Google_Ads_Mob_Flutter> createState() => _Google_Ads_Mob_FlutterState();
}

class _Google_Ads_Mob_FlutterState extends State<Google_Ads_Mob_Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google_Ads_Mob_Flutter"
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 30,left: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Google_ads()));
              },
              child: Text(
                "Google ads",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),*/
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 30,left: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Google_banner_ads()));
              },
              child: Text(
                "Google banner ads",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 30,left: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Google_interstitial_ads()));
              },
              child: Text(
                "Google interstitial ads",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 30,left: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Google_revode_ads()));
              },
              child: Text(
                "Google revode ads",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 30,left: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Google_native_ads()));
              },
              child: Text(
                "Google native ads",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
