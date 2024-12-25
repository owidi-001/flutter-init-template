import 'package:route_mate/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageWidget extends StatefulWidget {
  const WebPageWidget({super.key, required this.route});
  final String route;

  @override
  State<WebPageWidget> createState() => _WebPageWidgetState();
}

class _WebPageWidgetState extends State<WebPageWidget> {
  late final WebViewController controller;
  bool _isLoading = true;

  int loaded = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            setState(() {
              _isLoading = true;
            });
          });
        },
        onProgress: (progress) {
          setState(() {
            loaded = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            _isLoading = false;
          });
        },
        onWebResourceError: (error) {},
      ))
      ..loadRequest(
        Uri.parse(widget.route),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        WebViewWidget(
          controller: controller,
        ),
        _isLoading
            ? Container(
                width: double.infinity,
                height: double.infinity,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(.8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Center(
                      child: SizedBox(
                          height: 50.0, width: 50.0, child: SpinnerWidget()),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      child: Center(
                        child: Text(
                          "$loaded% loading.. please wait...",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    ));
  }
}
