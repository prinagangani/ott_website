
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  WebViewController? webViewController;

  List link = [
     "https://www.hotstar.com/",
     "https://www.primevideo.com/",
     "https://www.sonyliv.com/",
     "https://www.zee5.com/",
     "https://www.voot.com/",
     "https://www.jiocinema.com/",
     "https://www.netflix.com/",
     "https://www.mxplayer.in/",
   ];

   List logo = [
     "assets/images/hotstar.jpg",
     "assets/images/prime.png",
     "assets/images/sony.jpg",
     "assets/images/zee.png",
     "assets/images/voot.jpg",
     "assets/images/jio.png",
     "assets/images/netflix.png",
     "assets/images/mx.png",
   ];

   List name = [
     "Hotstar",
     "Amazon Prime",
     "SonyLiv",
     "Zee5",
     "Voot",
     "Jio Cinema",
     "Netflix",
     "Mx Player",
   ];

   void linkurl(int index)
   {
     webViewController  = WebViewController();
     webViewController!.loadRequest(Uri.parse("${link[index]}"));
   }
}