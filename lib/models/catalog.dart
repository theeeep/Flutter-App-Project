class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = "",
      this.name = "",
      this.desc = "",
      this.price = 0,
      this.color = "",
      this.image = ""});
}

final product = [
  Item(
      id: "101",
      name: "iphone 12 Pro",
      desc: "Apple Iphone 12th Gen",
      price: 900,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQadxVgzomlYx3x1weL_SJFQolCWtY6zF3IvA")
];
