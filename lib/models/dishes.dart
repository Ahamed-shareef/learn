// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  @override
  String toString() {
    return 'Dish(categoryID: $categoryID, id: $id, name: $name, price: $price, image: $image, description: $description)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryID': categoryID,
      'id': id,
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }

  factory Dish.fromMap(Map<String, dynamic> map) {
    return Dish(
      categoryID: map['categoryID'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      price: map['price'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
    );
  }
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
      categoryID: "1",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/3.jpg",
      description:
          "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "4",
      categoryID: "2",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/4.jpg",
      description:
          "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "5",
      categoryID: "2",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/5.jpg",
      description:
          "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "6",
      categoryID: "3",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/6.jpg",
      description:
          "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
  Dish(
      id: "7",
      categoryID: "3",
      name: "Cookie Slab",
      price: "QR50.00",
      image: "images/7.jpg",
      description:
          "Moist chocolate chip cookie bar topped with vanilla soft serve ice cream and Belgian milk chocolate"),
];
