class BeautyProduct {
  final img;
  final title;
  bool isEven;

  BeautyProduct({this.img, this.title,this.isEven});
}

final List<BeautyProduct> products = [
  BeautyProduct(
    img: "assets/images/product1.jpg",
    title: 'Makeup',
    isEven: false,
  ),
  BeautyProduct(
    img: "assets/images/product2.jpg",
    title: 'Skin Care',
    isEven: true,
    
  ),
  BeautyProduct(
    img: "assets/images/product3.png",
    title: 'Hair Care',
    isEven: false,
  ),
  BeautyProduct(
    img: "assets/images/product4.png",
    title: 'Fragrances & Deos',
    isEven: true,
  ),
  BeautyProduct(
    img: "assets/images/product5.jpg",
    title: 'Bath &\nHand Wash',
    isEven: false,
  ),
  BeautyProduct(
    img: "assets/images/product6.png",
    title: 'feminine\nHygiene',
    isEven: true,
  ),
  BeautyProduct(
    img: "assets/images/product7.jpg",
    title: 'Oral Care',
    isEven: false,
  ),
   BeautyProduct(
    img: "assets/images/product8.jpg",
    title: 'Health',
    isEven: true,
  ),
   BeautyProduct(
    img: "assets/images/product9.jpg",
    title: 'Men Grooming',
    isEven: false,
  ),
  
];
