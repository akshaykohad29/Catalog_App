class CatalogModel{
static List<Item> items = [Item(
  id: "Codepur001",
  name: "iPhone 12 Pro",
  desc: "Apple iPhone 12th generation",
  price: 999,
  color: "#33505a",
  image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gsmarena.com%2Fapple_iphone_12_pro-pictures-10508.php&psig=AOvVaw3bWhOY3bkE_Ty2HGiRSkg0&ust=1674665989708000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOit1Y3X4PwCFQAAAAAdAAAAABAI"

),
];
}


class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});


factory Item.fromMap(Map<String,dynamic>map){
  return Item(
    id: map["id"], 
    name: map["name"], 
    desc: map["desc"], 
    price: map["price"], 
    color: map["color"], 
    image: map["image"],
    );
}

toMap() =>{
  "id" : id,
  "name" : id,
  "desc" : desc,
  "price" : price,
  "color" : color,
  "image" : image,
};

}