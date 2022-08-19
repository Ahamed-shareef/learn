class Dish {
  final String categoryID;
  final String id;
  final String name;
  final String price;
  final String image;
  final String description;

  const Dish({
    required this.categoryID,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}

List<Dish> dishes = const [
  Dish(
      id: "1",
      categoryID: "1",
      name: "Baby Dynamite",
      price: "QR59.00",
      image: "images/1.jpg",
      description:
          "Layers of brownie with chocolate fudge, vanilla ice cream and peanut butter caramel ice cake served with hot milk chocolate sauce"),
  Dish(
      id: "2",
      categoryID: "1",
      name: "Konafa Cheesecake nice",
      price: "QR57.00",
      image: "images/2.jpg",
      description:
          "Sphere of strawberry sauce stuffed vanilla cheesecake rolled in golden fried Konafa served with lotus sauce and strawberry sauce. "),
  Dish(
      id: "3",
      categoryID: "2",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/3.jpg",
      description: "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "4",
      categoryID: "2",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/4.jpg",
      description: "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "5",
      categoryID: "3",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/5.jpg",
      description: "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "6",
      categoryID: "3",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/6.jpg",
      description: "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "7",
      categoryID: "1",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/7.jpg",
      description: "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
];
