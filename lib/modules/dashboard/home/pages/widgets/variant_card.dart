import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:flutter/material.dart';

class VariantCard extends StatelessWidget {
  final Variant variant;

  const VariantCard({super.key, required this.variant});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Variant color icon
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: _getColorFromString(variant.color),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 16),

            // Details section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Variant ID: ${variant.id}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                  ),
                  const SizedBox(height: 4),

                  // Size and stock status
                  Row(
                    children: [
                      const Icon(Icons.checkroom, color: Colors.blueAccent),
                      const SizedBox(width: 4),
                      Text(
                        'Size: ${variant.size}',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 12),
                      _buildStockStatus(),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Price increment
                  Row(
                    children: [
                      const Icon(Icons.price_change, color: Colors.green),
                      const SizedBox(width: 4),
                      Text(
                        'Price Increment: \$${variant.priceIncrement.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Color parser from string (for demonstration, you can customize this)
  Color _getColorFromString(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }

  // Stock status builder
  Widget _buildStockStatus() {
    return Row(
      children: [
        const SizedBox(width: 4),
        Text(
          "${variant.inStock}",
          style: TextStyle(
            color: variant.inStock > 0 ? Colors.green[700] : Colors.red[700],
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
