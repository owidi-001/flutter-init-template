import 'package:route_mate/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WardrobePreferences extends StatefulWidget {
  const WardrobePreferences({super.key, required this.nextUrl});

  final String nextUrl;

  @override
  State<WardrobePreferences> createState() => _WardrobePreferencesState();
}

class _WardrobePreferencesState extends State<WardrobePreferences> {
  final PageController _pageController = PageController();
  final Map<String, String> wardrobeOptions = {
    'Casual': 'Relaxed and comfortable everyday clothing.',
    'Formal': 'Elegant clothing for professional or special occasions.',
    'Sportswear': 'Clothing designed for physical activity or sports.',
    'Outerwear': 'Jackets, coats, and other clothing for outdoor wear.',
    'Footwear': 'Shoes, boots, and other types of footwear.',
    'Accessories': 'Items such as hats, scarves, belts, and jewelry.',
    'Ethnic': 'Traditional clothing representing cultural heritage.',
    'Party Wear': 'Trendy and stylish outfits for social events or parties.',
    'Workwear':
        'Durable clothing designed for manual labor or work environments.',
    'Loungewear': 'Comfortable clothing for relaxing at home.',
    'Activewear': 'Clothing designed for fitness and athletic activities.',
    'Sleepwear': 'Comfortable clothes for sleeping, such as pajamas.',
    'Swimwear': 'Clothing for swimming or beach activities, like swimsuits.',
    'Business Casual':
        'A mix of professional and relaxed clothing, suitable for the office.',
    'Denim': 'Clothing made from denim fabric, such as jeans and jackets.',
    'Festival Wear': 'Trendy and eclectic outfits often worn at festivals.',
    'Vintage': 'Retro or second-hand clothing, typically from past decades.',
    'Luxury': 'High-end designer wear made from premium materials.',
    'Maternity Wear':
        'Clothing designed for pregnant women, focusing on comfort and style.',
    'Wedding Attire':
        'Dresses, suits, and outfits for weddings and related events.',
    'Streetwear': 'Urban fashion focused on casual yet trendy clothing.',
    'Seasonal':
        'Clothing specific to different seasons, like winter coats or summer dresses.',
    'Swanky Casual': 'Trendy, upscale casual wear for stylish outings.',
    'Bohemian': 'Relaxed, free-flowing, and artistic clothing styles.',
    'Layering Basics':
        'Simple, versatile pieces designed to be layered with other clothes.',
    'Modest Wear':
        'Clothing designed with a more conservative style, often culturally appropriate.',
    'Formal Evening Wear':
        'Gowns, tuxedos, and outfits for black-tie or formal events.',
    'High Fashion': 'Runway-inspired clothing, often avant-garde or couture.',
    'Sustainable Fashion': 'Eco-friendly and ethically sourced clothing.',
    'Travel Wear': 'Comfortable clothing designed for traveling.',
    'Petite': 'Clothing designed for smaller frames and shorter heights.',
    'Plus Size':
        'Clothing designed for larger body types, emphasizing comfort and style.',
    'Adaptive Clothing':
        'Tailored clothing designed to accommodate people with disabilities.'
  };

  final Set<String> selectedPreferences = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: NavBackButton(
        //   dContext: context,
        //   callBack: () {
        //     context.goNamed(widget.routes["fromRoute"]!);
        //   },
        // ),
        title: const Text('Personalization'),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable manual swiping
        children: [
          _buildWardrobeSelectionPage(),
          BodyDescriptionPage(
            onPreviousPage: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            nextUrl: widget.nextUrl,
          ),
        ],
      ),
    );
  }

  Widget _buildWardrobeSelectionPage() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(kMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Please select at least 5 preferences',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: kSmall,
            runSpacing: kSmall,
            alignment: WrapAlignment.center,
            children: wardrobeOptions.keys.map((option) {
              final isSelected = selectedPreferences.contains(option);
              return ChoiceChip(
                label: Text(option),
                selected: isSelected,
                selectedColor: Theme.of(context).colorScheme.primary,
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      selectedPreferences.add(option);
                    } else {
                      selectedPreferences.remove(option);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: selectedPreferences.length >= 5
                  ? () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  : null,
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class BodyDescriptionPage extends StatelessWidget {
  final VoidCallback onPreviousPage;
  final String nextUrl;

  BodyDescriptionPage(
      {super.key, required this.onPreviousPage, required this.nextUrl});

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController bodyShapeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Please fill out the following information to help us find the best-fitting clothes for you:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: heightController,
            decoration: const InputDecoration(
              labelText: 'Height (cm)',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: weightController,
            decoration: const InputDecoration(
              labelText: 'Weight (kg)',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: bodyShapeController,
            decoration: const InputDecoration(
              labelText: 'Body Shape (e.g. hourglass, pear, athletic)',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: onPreviousPage,
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: Text(
                  'Back',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              const SizedBox(
                width: kMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(nextUrl);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
