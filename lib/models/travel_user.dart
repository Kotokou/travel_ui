class TravelUser {
  final String name;
  final String photoUrl;

  TravelUser({
    required this.name,
    required this.photoUrl,
  });

  static TravelUser antoine = TravelUser(
    name: 'Antoine Kpanté',
    photoUrl:
        "https://plus.unsplash.com/premium_photo-1661759523015-f71f86d87273?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGJsYWNrJTIwbWVufGVufDB8fDB8fHww",
  );

  static TravelUser brice = TravelUser(
    name: 'Brice Essolaba',
    photoUrl:
        "https://images.unsplash.com/photo-1536766820879-059fec98ec0a?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTh8fGJsYWNrJTIwbWVufGVufDB8fDB8fHww",
  );

  static TravelUser edwige = TravelUser(
    name: 'Edwige Foutou',
    photoUrl:
        "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGJsYWNrJTIwbWVufGVufDB8fDB8fHww",
  );
  static TravelUser dav = TravelUser(
    name: 'Dav Codeur',
    photoUrl:
        "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGJsYWNrJTIwbWVufGVufDB8fDB8fHww",
  );
  static TravelUser toma = TravelUser(
    name: 'Toma Dior',
    photoUrl:
        "https://images.unsplash.com/photo-1463453091185-61582044d556?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGJsYWNrJTIwbWVufGVufDB8fDB8fHww",
  );

  static List<TravelUser> users = [dav, toma, brice, antoine, edwige];
}
