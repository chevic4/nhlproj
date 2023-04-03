library theme_entity;

part 'conference_entity.dart';
part 'venue_entity.dart';
part 'division_entity.dart';
part 'franchise_entity.dart';

class TeamEntity {
  TeamEntity({
    required this.id,
    required this.name,
    required this.link,
    required this.venue,
    required this.abbreviation,
    required this.teamName,
    required this.locationName,
    required this.firstYearOfPlay,
    required this.division,
    required this.conference,
    required this.franchise,
    required this.shortName,
    required this.officialSiteUrl,
    required this.active,
  });
  final int id;
  final String name;
  final String link;
  final VenueEntity venue;
  final String abbreviation;
  final String teamName;
  final String locationName;
  final int firstYearOfPlay;
  final DivisionEntity division;
  final ConferenceEntity conference;
  final FranchiseEntity franchise;
  final String shortName;
  final String officialSiteUrl;
  final bool active;
}
