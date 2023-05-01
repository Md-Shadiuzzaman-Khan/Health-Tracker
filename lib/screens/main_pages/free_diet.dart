import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  final String url = 'https://api.jobfid.com/calories-consumption-calculator';
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (String url) {
                setState(() {
                  isLoading = true;
                });
              },
              onPageFinished: (String url) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            if (isLoading) Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}


