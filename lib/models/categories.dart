// ignore_for_file: public_member_api_docs, sort_constructors_first
class DishCategory {
  final String id;
  final String image;
  final String name;

  const DishCategory(
      {required this.id, required this.image, required this.name});

  @override
  String toString() => 'DishCategory(id: $id, image: $image, name: $name)';
}

List<DishCategory> category = const [
  DishCategory(id: "0", name: "الكل", image: "images/L9.jpg"),
  DishCategory(id: "1", name: "اطباق شوكوميلت المميزة", image: "images/L1.jpg"),
  DishCategory(id: "2", name: "كريب", image: "images/L2.jpg"),
  DishCategory(id: "3", name: "وافل", image: "images/L3.jpg"),
];
