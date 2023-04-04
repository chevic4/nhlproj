library theme_entity;

part 'venue_entity.dart';

class TeamEntity {
  TeamEntity({
    required this.id,
    required this.name,
    required this.venue,
    required this.teamName,
    required this.firstYearOfPlay,
    required this.divisionName,
    required this.conferenceName,
    required this.franchiseName,
    required this.officialSiteUrl,
    required this.active,
  });
  final int id;
  final String name;
  final VenueEntity venue;
  final String teamName;
  final int firstYearOfPlay;
  final String divisionName;
  final String conferenceName;
  final String franchiseName;
  final String officialSiteUrl;
  final bool active;
}
