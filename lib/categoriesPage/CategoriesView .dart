import 'package:flutter/material.dart';
import '../nations/SearchNationsPage.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  static const List<String> categories = [
    'PUBLIC VIDEO MEET FORUMS',
    'PROFESSIONAL FOR VIDEO MEETING',
    'LONG TERM DATING / DISTANCES',
    'BUILDING FRIENDSHIPS',
    'BUSINESS P2P P2B',
    'UPCOMING EVENTS - FRIENDS',
    'MUSIC',
    'GAMING',
    'MEETING TRAVELERS',
    'SHARING INFO',
    'ENTERTAINMENT',
    'LETTERS - LOOKING FOR',
    'COMPUTER HELP',
    'WOULD LIKE TO MEET A',
    'UPCOMING EVENTS',
    'LOCAL MEETING / INFO',
    'ACROSS THE MAP',
    'MAKING MONEY GOALS',
    'LEAVE ME A V-MESSAGE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 10),

                /// Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      const Spacer(),
                      const Text(
                        'CATEGORIES',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  color: Colors.black54,
                  child: const Center(
                    child: Text(
                      'SELECT CATEGORIES',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Stack(
              children: [
                /// Background Image
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/bg222.png',
                    fit: BoxFit.cover,
                  ),
                ),

                /// Dark Overlay
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(.35),
                  ),
                ),

                Column(
                  children: [
                    const SizedBox(height: 15),

                    /// Search
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Here...',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        itemCount: categories.length + 1,
                        itemBuilder: (context, index) {
                          if (index == categories.length) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 20,
                              ),
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '🌎',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Search World Wide',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }

                          return Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(12),
                              ),
                              child: ListTile(
                                title: Text(
                                  categories[index],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight:
                                        FontWeight.w500,
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.chevron_right,
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const SearchNationsPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}