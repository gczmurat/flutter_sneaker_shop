import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
      showDialog(context: context, builder: (context) => AlertDialog(title: Text("Sepete Eklendi"),
      content: Text("Sepeti Kontrol Ediniz"),),);
    }


    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              child: TextField(
                cursorColor: Colors.white,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  hintText: "ÜRÜN ARAYINIZ",
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.black,
                ),
              ),
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Tarzınızı adımlarınızda buluşturun. Sneaker tutkunlarının adresi.",
              style: TextStyle(color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favori Ürünler 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  " Hepsini gör",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.getShoeList().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(shoe: shoe, onTap: () => addShoeToCart(shoe),);
                }),
          ),
        ],
      ),
    );
  }
}
