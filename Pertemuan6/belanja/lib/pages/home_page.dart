import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Garam Kapal',
      price: 2000,
      image: 'images/garam_kapal.jpg',
      stock: 20,
      rating: 4.2,
      description:
          'Garam dapur berkualitas tinggi yang cocok untuk berbagai masakan sehari-hari.',
    ),
    Item(
      name: 'Garam Segitiga',
      price: 2500,
      image: 'images/garam_segitiga.jpg',
      stock: 15,
      rating: 4.0,
      description:
          'Garam halus dengan rasa alami yang sering digunakan untuk kebutuhan rumah tangga.',
    ),
    Item(
      name: 'Gula Aren',
      price: 10000,
      image: 'images/gula_aren.jpg',
      stock: 12,
      rating: 4.5,
      description:
          'Gula aren alami dengan cita rasa khas, cocok untuk minuman dan masakan tradisional.',
    ),
    Item(
      name: 'Gula Mentari',
      price: 7000,
      image: 'images/gula_mentari.jpg',
      stock: 18,
      rating: 4.1,
      description:
          'Gula pasir berkualitas untuk kebutuhan sehari-hari dengan harga terjangkau.',
    ),
    Item(
      name: 'Gulaku',
      price: 5000,
      image: 'images/gulaku.jpg',
      stock: 25,
      rating: 4.6,
      description:
          'Gula putih premium yang higienis dan cocok untuk berbagai jenis makanan dan minuman.',
    ),
    Item(
      name: 'Revina Garam',
      price: 3000,
      image: 'images/revina_garam.jpg',
      stock: 10,
      rating: 3.9,
      description:
          'Garam dapur ekonomis dengan kualitas baik untuk penggunaan sehari-hari.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 📌 APP BAR
      appBar: AppBar(title: const Text('Daftar Belanja')),

      // 📌 BODY (GRID PRODUK)
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.65,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },

            // 📌 CARD PRODUK
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(
                        item.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),

                          Text('Rp ${item.price}'),

                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text('${item.rating}'),
                            ],
                          ),

                          const Spacer(),

                          Text(
                            'Stok: ${item.stock}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: const FooterWidget(),
    );
  }
}
