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
  String referenceImageId;

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
      required this.wikipediaUrl,
      required this.referenceImageId});

  factory Breed.fromJson(Map<String, dynamic> data) {
    return Breed(
        image: data['image'] != null ? data['image']['url'] ?? '' : '',
        name: data['name'],
        origin: data['origin'],
        description: data['description'],
        temperament: data['temperament'],
        intelligence: data['intelligence'],
        adaptability: data['adaptability'],
        energyLevel: data['energy_level'],
        affectiveLevel: data['affection_level'],
        childFriendly: data['child_friendly'],
        dogFriendly: data['dog_friendly'],
        strangerFriendly: data['stranger_friendly'],
        healthIssues: data['health_issues'],
        socialNeeds: data['social_needs'],
        grooming: data['grooming'],
        lifeSpan: data['life_span'],
        cfaUrl: data['cfa_url'] ?? '',
        vetstreetUrl: data['vetstreet_url'] ?? '',
        vcaUrl: data['vcahospitals_url'] ?? '',
        wikipediaUrl: data['wikipedia_url'] ?? '',
        referenceImageId: data['reference_image_id'] ?? '');
  }
}
