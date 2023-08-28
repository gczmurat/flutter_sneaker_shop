import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: "3000 TL",
        imagePath:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f73d8888-7d7c-44e7-aa3d-c51414a9b8a2/air-zoom-pegasus-40-gen%C3%A7-yol-ko%C5%9Fu-ayakkab%C4%B1s%C4%B1-G8QsFc.png",
        description: "Yeni Sezon"),
        Shoe(
        name: "Pegasus Trail",
        price: "4200 TL",
        imagePath:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6d7a60b9-1c6a-4fdc-8bfc-f99ff3a65beb/pegasus-trail-4-gore-tex-su-ge%C3%A7irmez-arazi-tipi-ko%C5%9Fu-ayakkab%C4%B1s%C4%B1-7nd1xs.png",
        description: "Yeni Sezon"),
        Shoe(
        name: "Air Jordan",
        price: "2750 TL",
        imagePath:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aade3221-a084-4fcb-ba51-3ac46dfe2069/air-jordan-37-low-basketbol-ayakkab%C4%B1s%C4%B1-nZFGJG.png",
        description: "Yeni Sezon"),
        Shoe(
        name: "Air Force",
        price: "2000 TL",
        imagePath:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/e448838b-b68c-43db-89b5-fe07e7e64b23/air-force-1-07-ayakkab%C4%B1s%C4%B1-h0hLnB.png",
        description: "Yeni Sezon"),
  ];

  List<Shoe> userCart = [];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
