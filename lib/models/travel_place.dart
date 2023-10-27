import 'status_tag.dart';
import 'travel_user.dart';

class TravelPlace {
  final String? id;
  final String name;
  final int? likes;
  final int? shared;
  final String? description;
  final List<String> imagesUrl;
  final StatusTag? statusTag;
  final TravelUser user;
  final String? locationDesc;

  TravelPlace({
    this.shared = 0,
    this.id = '',
    required this.name,
    this.likes = 0,
    this.description = '',
    required this.imagesUrl,
    this.statusTag = StatusTag.popular,
    required this.user,
    this.locationDesc = '',
  });
}
