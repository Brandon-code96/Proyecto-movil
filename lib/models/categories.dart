import 'dart:convert';

// class Categorias {
//     Categorias({
//       required this.restaurante111,
//       required this.restaurante112,
//       required this.restaurante113,
//       required this.restaurante114,
//     });

//     Restaurante11 restaurante111;
//     Restaurante11 restaurante112;
//     Restaurante11 restaurante113;
//     Restaurante11 restaurante114;

//     factory Categorias.fromJson(String str) => Categorias.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
//         restaurante111: Restaurante11.fromMap(json["restaurante111"]),
//         restaurante112: Restaurante11.fromMap(json["restaurante112"]),
//         restaurante113: Restaurante11.fromMap(json["restaurante113"]),
//         restaurante114: Restaurante11.fromMap(json["restaurante114"]),
//     );

//     Map<String, dynamic> toMap() => {
//         "restaurante111": restaurante111.toMap(),
//         "restaurante112": restaurante112.toMap(),
//         "restaurante113": restaurante113.toMap(),
//         "restaurante114": restaurante114.toMap(),
//     };
// }

class Categorias {
    Categorias({
        required this.description,
        required this.image,
        required this.ladlng,
        required this.name,
        required this.price,
    });

    String description;
    String image;
    String ladlng;
    String name;
    double price;
    String? id;

    factory Categorias.fromJson(String str) => Categorias.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
        description: json["description"],
        image: json["image"],
        ladlng: json["ladlng"],
        name: json["name"],
        price: json["price"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "description": description,
        "image": image,
        "ladlng": ladlng,
        "name": name,
        "price": price,
    };
}
