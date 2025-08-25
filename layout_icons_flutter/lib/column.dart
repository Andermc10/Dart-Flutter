import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gervonta Davis'), 
        toolbarHeight: 56, 
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/GervontaDavis.webp',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16), 
            child: Row(
              children: [ 
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: const Text(
                          'Gervonta "Tank" Davis',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Text(
                        'Baltimore, Maryland',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '41', // Rating aproximado basado en su popularidad
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.call, color: Colors.blueGrey, size: 24),
                    SizedBox(height: 4),
                    Text(
                      'CALL',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.near_me, color: Colors.blueGrey, size: 24),
                    SizedBox(height: 4),
                    Text(
                      'ROUTE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.share, color: Colors.blueGrey, size: 24),
                    SizedBox(height: 4),
                    Text(
                      'SHARE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Gervonta "Tank" Davis is an American professional boxer born on November 7, 1994, in Baltimore, Maryland. '
              'Known for his knockout power and southpaw stance, he has held multiple world titles, including the WBA lightweight title since 2023. '
              'Raised in a challenging environment, Davis turned to boxing to escape a life of crime, eventually becoming a three-division world champion. '
              'His career highlights include victories over Ryan Garcia and Léo Santa Cruz, showcasing his elite skills and ring IQ.',
              softWrap: true,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}