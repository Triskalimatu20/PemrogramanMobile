import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: ListView(
        children: [
          Hero(
            tag: itemArgs.name,
            child: Container(
              color: Colors.white10,
              child: Image.asset(
                itemArgs.image,
                width: double.infinity,
                height: 260,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //nama produk
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
                //harga produk
                Text(
                  'Rp ${itemArgs.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),

                const SizedBox(height: 10),
                //informasi rating dan stok
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 18),
                        const SizedBox(width: 4),
                        Text('${itemArgs.rating}'),
                      ],
                    ),
                    Text(
                      'Stok: ${itemArgs.stock}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                const Divider(height: 30),
                //deskripsi produk
                const Text(
                  'Deskripsi Produk',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    itemArgs.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 14, height: 1.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
