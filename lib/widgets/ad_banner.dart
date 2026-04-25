import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdBanner extends StatefulWidget {
  @override
  State createState() => _AdState();
}

class _AdState extends State<AdBanner> {
  BannerAd? ad;

  @override
  void initState() {
    super.initState();
    ad = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-xxxx/banner",
      listener: BannerAdListener(),
      request: AdRequest(),
    )..load();
  }

  @override
  Widget build(context) {
    return ad == null
        ? SizedBox()
        : Container(height: 50, child: AdWidget(ad: ad!));
  }
}
