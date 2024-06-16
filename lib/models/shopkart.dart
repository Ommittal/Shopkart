class shopkartmodel {
  static final item = [
    Items(
        id: "jeans",
        name: "Denim Jeans",
        model: "Size : 32",
        color: "Blue",
        price: 1899,
        image:
            "https://rukminim2.flixcart.com/image/332/398/k7f34i80/jean/d/w/z/34-11274692-roadster-original-imafpndcagzrrqhg.jpeg?q=50")
  ];
}

class Items {
  final String id;
  final String name;
  final String model;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.model,
      required this.price,
      required this.color,
      required this.image});
}
