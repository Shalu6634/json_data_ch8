class UserModal {
  late int id;
  late String name, username, email, phone, website;
  Address address;
  Company company;

  UserModal(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.address,
      required this.company});

  factory UserModal.fromJson(Map m1) {
    return UserModal(
      id: m1['id'],
      name: m1['name'],
      username: m1['username'],
      email: m1['email'],
      phone: m1['phone'],
      website: m1['website'],
      address: Address.fromJson(m1['address']),
      company: Company.fromJson(m1['company']),
    );
  }
}

class Address {
  late String street, suite, city, zipcode;
  Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromJson(Map m1) {
    return Address(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],

      geo: Geo.fromJson(m1['geo']),
    );
  }
}

class Geo {
  late String lng, lat;

  Geo({
    required this.lng,
    required this.lat,
  });

  factory Geo.fromJson(Map m1) {
    return Geo(lng: m1['lng'], lat: m1['lat']);
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map m1) {
    return Company(
        name: m1['name'], catchPhrase: m1['catchPhrase'], bs: m1['bs']);
  }
}
