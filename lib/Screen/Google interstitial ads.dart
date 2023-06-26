import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Google_interstitial_ads extends StatefulWidget {
  const Google_interstitial_ads({Key? key}) : super(key: key);

  @override
  State<Google_interstitial_ads> createState() => _Google_interstitial_adsState();
}

class _Google_interstitial_adsState extends State<Google_interstitial_ads> {

  late final InterstitialAd interstitialAd;
  //var adUnit = "ca-app-pub-3940256099942544/1033173712";
  final adUnitId= "ca-app-pub-3940256099942544/1033173712";

  @override
  void initState() {
    super.initState();

    _loadInterstitialAd();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {

          interstitialAd = ad;

          _setFullScreenContentCallback(ad);
        },
        onAdFailedToLoad: (LoadAdError loadAdError) {
          print("Interstitial ad failed to load: $loadAdError");
        },
      ),
    );
  }

  void _setFullScreenContentCallback(InterstitialAd ad) {
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) => print("$ad onAdShowedFullScreenContent"),

      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print("onAdDismissedFullScreenContent");

        ad.dispose();
      },

      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print("onAdFailedToShowFullScreenContent: $error");
      },

      onAdImpression: (InterstitialAd ad) =>print("$ad Impression occured"),

    );
  }

  void _showInterstitialAd() {
    interstitialAd.show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google interstitial ads",
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: _showInterstitialAd,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            height: 50,
            color: Colors.grey,
            child: Text(
              "Google_interstitial_ads",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }

}
