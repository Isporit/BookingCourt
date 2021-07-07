import 'package:flutter/material.dart';

class SportType {
  final String typeSport, title, image;
  final int id;

  SportType({
    required this.id,
    required this.title,
    required this.typeSport,
    required this.image,
  });
}

List<SportType> sportType = [
  SportType(
    id: 1,
    title: "Hotel",
    typeSport: "Hotel",
    image:
        "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-hotel-icon-for-personal-and-commercial-use-png-image_1044892.jpg",
  ),
  SportType(
    id: 2,
    title: "tennis",
    typeSport: "tennis",
    image:
        "https://www.parisinfo.com/var/otcp/sites/images/media/1.-photos/03.-hebergement-630-x-405/hotel-enseigne-neon-630x405-c-thinkstock/31513-1-fre-FR/Hotel-enseigne-neon-630x405-C-Thinkstock.jpg",
  ),
];

class Location {
  final String type, image;
  final int id;

  Location({
    required this.id,
    required this.type,
    required this.image,
  });
}

List<Location> location = [
  Location(
    id: 1,
    type: "FootBall",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrd5dg59ZyF5_AYBm4_yba7Zfw4eBziKzPZQ&usqp=CAU",
  ),
  Location(
    id: 2,
    type: "Tennis",
    image: "https://image.flaticon.com/icons/png/512/2379/2379628.png",
  ),
];

class Terrain {
  String nomTerrain;
  int prixday, id, prixnight;
  List<dynamic> imagesTerrain;

  Terrain({
    required this.nomTerrain,
    required this.prixday,
    required this.prixnight,
    required this.imagesTerrain,
    required this.id,
  });
}

class Product {
  String clubName, lieu, type, description;
  List<String> images;
  int id;
  List<Terrain> court;
  Product({
    required this.clubName,
    required this.lieu,
    required this.id,
    required this.images,
    required this.description,
    required this.type,
    required this.court,
  });
}

List<Product> products = [
  new Product(
      id: 1,
      clubName: "Tennis club la marsa",
      lieu: "La Marsa",
      description: "Tennis Tennis",
      type: "tennis",
      images: [
        "https://i1.wp.com/www.construction-travaux.com/wp-content/uploads/2019/06/shutterstock_94702642.jpg?fit=4288%2C2848&ssl=1 "
      ],
      court: [
        new Terrain(
          id: 1,
          imagesTerrain: [
            "https://i1.wp.com/www.construction-travaux.com/wp-content/uploads/2019/06/shutterstock_94702642.jpg?fit=4288%2C2848&ssl=1",
            "https://static.lexpress.fr/medias_11584/w_1000,h_563,c_fill,g_north/v1503052613/terrain-de-tennis_5931094.jpg"
          ],
          nomTerrain: "court 1",
          prixday: 10,
          prixnight: 20,
        ),
      ]),
  new Product(
      id: 2,
      clubName: "Tennis club  Carthage",
      lieu: "Carthage",
      description: "Tennis Tennis",
      type: "tennis",
      images: [
        "https://i1.wp.com/www.construction-travaux.com/wp-content/uploads/2019/06/shutterstock_94702642.jpg?fit=4288%2C2848&ssl=1 "
      ],
      court: [
        new Terrain(
          id: 1,
          imagesTerrain: [
            "https://fr.mylivingbloom.com/wp-content/uploads/2020/07/84-Comment-construire-un-terrain-de-tennis3-1080x672.jpg",
          ],
          nomTerrain: "court 1",
          prixday: 10,
          prixnight: 20,
        ),
        new Terrain(
          id: 2,
          imagesTerrain: [
            "https://www.landerneau.bzh/medias/2018/01/Reserver-un-court-de-tennis.png",
          ],
          nomTerrain: "court 2",
          prixday: 10,
          prixnight: 20,
        ),
        new Terrain(
          id: 3,
          imagesTerrain: [
            "https://www.sm-devis.tn/wp-content/uploads/2019/11/Prix-de-la-construction-dun-court-de-tennis-tunisie.jpg",
          ],
          nomTerrain: "court 3",
          prixday: 10,
          prixnight: 20,
        ),
      ]),
  new Product(
      id: 3,
      clubName: "Tennis club Tunis",
      lieu: "Tunis",
      description: "Tennis Tennis",
      type: "tennis",
      images: [
        "https://i1.wp.com/www.construction-travaux.com/wp-content/uploads/2019/06/shutterstock_94702642.jpg?fit=4288%2C2848&ssl=1 "
      ],
      court: [
        new Terrain(
          id: 1,
          imagesTerrain: [
            "https://www.techni-contact.com/ressources/images/produits/zoom/construction-renovation-terrain-de-tennis-en-beton-12575809-3.jpg",
          ],
          nomTerrain: "court 1",
          prixday: 10,
          prixnight: 20,
        ),
        new Terrain(
          id: 2,
          imagesTerrain: [
            "https://anybuddyapp.com/wp-content/uploads/2018/02/court_n2_2.jpg",
          ],
          nomTerrain: "court 2",
          prixday: 10,
          prixnight: 20,
        ),
        new Terrain(
          id: 3,
          imagesTerrain: [
            "https://www.techni-contact.com/ressources/images/produits/zoom/6519375-1.jpg",
          ],
          nomTerrain: "court 3",
          prixday: 10,
          prixnight: 20,
        ),
      ])
];
