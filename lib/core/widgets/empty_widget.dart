import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final VoidCallback? onRefresh;

  const EmptyWidget({
    super.key,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "No item found",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            if (onRefresh != null) ...[
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: onRefresh,
                child: const Text("Refresh"),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
