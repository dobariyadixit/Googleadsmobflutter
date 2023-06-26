import 'package:flutter/material.dart';

class Google_ads extends StatefulWidget {
  const Google_ads({Key? key}) : super(key: key);

  @override
  State<Google_ads> createState() => _Google_adsState();
}

class _Google_adsState extends State<Google_ads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Google ads",
        ),
      ),
    );
  }
}
