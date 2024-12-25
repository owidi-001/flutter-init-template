// Loaders

// etc
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class RouteError extends StatefulWidget {
  const RouteError({super.key, required this.msg});
  final String msg;

  @override
  State<RouteError> createState() => _RouteErrorState();
}

class _RouteErrorState extends State<RouteError>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// Service Badges
class ServiceBadge extends StatelessWidget {
  const ServiceBadge(
      {super.key,
      required this.icon,
      required this.title,
      this.size = 40,
      this.onTapCallback});
  final String icon;
  final String title;
  final double size;
  final Function()? onTapCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withOpacity(.8),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.class_,
            //     size: 60, color: Theme.of(context).colorScheme.error),
            Image.asset(
              "assets/icons/$icon",
              width: size,
              height: size,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}

class SpinnerWidget extends StatefulWidget {
  const SpinnerWidget({super.key, this.size = 50});
  final double size;

  @override
  State<SpinnerWidget> createState() => _SpinnerWidgetState();
}

class _SpinnerWidgetState extends State<SpinnerWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinKitDoubleBounce(
      color: Theme.of(context).colorScheme.onSurface,
      size: widget.size,
      controller: _controller,
    );
  }
}

class EmptyList extends StatelessWidget {
  const EmptyList(
      {super.key,
      required this.actionCall,
      required this.icon,
      required this.title});
  final String icon;
  final String title;
  final String actionCall;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/$icon",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              actionCall,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}

class LoadingFailed extends StatelessWidget {
  const LoadingFailed(
      {super.key,
      required this.callToAction,
      this.icon = "broken-image.png",
      required this.title});
  final String icon;
  final String title;
  final Function() callToAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/$icon",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton.icon(
              onPressed: callToAction,
              icon: const Icon(Icons.refresh),
              label: Text(
                "Retry",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NavBackButton extends StatelessWidget {
  const NavBackButton(
      {super.key, required this.dContext, this.callBack, this.color});
  final BuildContext dContext;
  final Function()? callBack;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => dContext.pop(),
        icon: FaIcon(FontAwesomeIcons.arrowLeft));
  }
}

class ShimmerBox extends StatelessWidget {
  final double height;
  final double width;
  final double radius;

  const ShimmerBox(
      {super.key, required this.height, required this.width, this.radius = 4});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[600]! : Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key,
      required this.url,
      required this.height,
      required this.width,
      this.radius});
  final String url;
  final double height;
  final double width;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(radius ?? 0)),
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
              child: ShimmerBox(
            height: height,
            width: width,
            radius: radius ?? 0,
          )),
          errorWidget: (context, url, error) => Image.asset(
            "assets/icons/broken-image.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final Widget widget;
  const IconContainer({super.key, required this.widget});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: 60,
      width: size.width * 0.45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(.2))),
      child: widget,
    );
  }
}

class TextWrapper extends StatefulWidget {
  const TextWrapper(
      {super.key,
      required this.text,
      this.style,
      this.trimLines = 4,
      this.trimExpandedText = "Show less",
      this.trimCollapsedText = "Read more"});

  final String text;
  final TextStyle? style;
  final int? trimLines;
  final String trimCollapsedText;
  final String trimExpandedText;

  @override
  State<TextWrapper> createState() => _TextWrapperState();
}

class _TextWrapperState extends State<TextWrapper>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: ConstrainedBox(
              constraints: isExpanded
                  ? const BoxConstraints()
                  : const BoxConstraints(maxHeight: 70),
              child: Text(
                widget.text,
                style: widget.style ?? Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
                overflow: TextOverflow.fade,
              ))),
      isExpanded
          ? OutlinedButton.icon(
              icon: const Icon(Icons.arrow_upward),
              label: Text(widget.trimExpandedText),
              onPressed: () => setState(() => isExpanded = false))
          : TextButton.icon(
              icon: const Icon(Icons.arrow_downward),
              label: Text(widget.trimCollapsedText),
              onPressed: () => setState(() => isExpanded = true))
    ]);
  }
}
