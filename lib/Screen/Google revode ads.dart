import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Google_revode_ads extends StatefulWidget {
  const Google_revode_ads({Key? key}) : super(key: key);

  @override
  State<Google_revode_ads> createState() => _Google_revode_adsState();
}

class _Google_revode_adsState extends State<Google_revode_ads> {


  late final RewardedAd rewardedAd;
  final String rewardedAdUnitId = "ca-app-pub-3940256099942544/5224354917";

  @override
  void initState() {
    super.initState();
    _loadRewardedAd();
  }

  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdFailedToLoad: (LoadAdError erroe) {
            print("Failed to load rewarded ad, Error: $erroe");
          },
          onAdLoaded: (RewardedAd ad) {
            print("$ad loaded");

            rewardedAd = ad;

            _setFullScreenContentCallback();
          }
      ),
    );
  }

  void _setFullScreenContentCallback() {
    if(rewardedAd == null) return;
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) => print("ad onAdShowedFullScreenContent"),

      onAdDismissedFullScreenContent: (RewardedAd ad) {
        print("$ad onAdDismissedFullScreenContent");

        ad.dispose();
      },

      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        print("$ad onAdFailedToShowFullScreenContent : $error ");

        ad.dispose();
      },

      onAdImpression: (RewardedAd ad) => print("$ad Impression occured"),
    );
  }

  void _showRewardedAd() {
    rewardedAd.show(
        onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) {

          num amount = rewardItem.amount;
          print("You earned: $amount");
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "native ads",
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: InkWell(
            onTap: _showRewardedAd,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              height: 50,
              color: Colors.grey,
              child: Text(
                "Show Rewarded Ad",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          )
      ),
    );
  }
}
