class Breed {
  String? id;
  String image;
  String name;
  String origin;
  String description;
  String temperament;
  int intelligence;
  int adaptability;
  int energyLevel;
  int affectiveLevel;
  int childFriendly;
  int dogFriendly;
  int strangerFriendly;
  int healthIssues;
  int socialNeeds;
  int grooming;
  String lifeSpan;
  String cfaUrl;
  String vetstreetUrl;
  String vcaUrl;
  String wikipediaUrl;

  Breed(
      {this.id,
      required this.image,
      required this.name,
      required this.origin,
      required this.description,
      required this.temperament,
      required this.intelligence,
      required this.adaptability,
      required this.energyLevel,
      required this.affectiveLevel,
      required this.childFriendly,
      required this.dogFriendly,
      required this.strangerFriendly,
      required this.healthIssues,
      required this.socialNeeds,
      required this.grooming,
      required this.lifeSpan,
      required this.cfaUrl,
      required this.vetstreetUrl,
      required this.vcaUrl,
      required this.wikipediaUrl});

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
        image: json['image']['url'],
        name: json['name'],
        origin: json['origin'],
        description: json['description'],
        temperament: json['temperament'],
        intelligence: json['intelligence'],
        adaptability: json['adaptability'],
        energyLevel: json['energy_level'],
        affectiveLevel: json['affective_level'],
        childFriendly: json['child_friendly'],
        dogFriendly: json['dog_friendly'],
        strangerFriendly: json['stranger_friendly'],
        healthIssues: json['health_issues'],
        socialNeeds: json['social_needs'],
        grooming: json['grooming'],
        lifeSpan: json['life_span'],
        cfaUrl: json['cfa_url'],
        vetstreetUrl: json['vetstreet_url'],
        vcaUrl: json['vca_url'],
        wikipediaUrl: json['wikipedia_url']);
  }
}
