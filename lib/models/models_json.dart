class AutoGenerate {
  AutoGenerate({
    required this.copyright,
    required this.teams,
  });
  late final String copyright;
  late final List<Teams> teams;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    teams = List.from(json['teams']).map((e) => Teams.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['copyright'] = copyright;
    _data['teams'] = teams.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Teams {
  Teams({
    required this.id,
    required this.name,
    //required this.link,
    //required this.venue,
    //required this.abbreviation,
    required this.teamName,
    required this.locationName,
    required this.firstYearOfPlay,
    required this.division,
    required this.conference,
    required this.franchise,
    // required this.shortName,
    required this.officialSiteUrl,
    //required this.franchiseId,
    required this.active,
  });
  late final int id;
  late final String name;
  //late final String link;
  //late final Venue venue;
  //late final String abbreviation;
  late final String teamName;
  late final String locationName;
  late final String firstYearOfPlay;
  late final Division division;
  late final Conference conference;
  late final Franchise franchise;
  //late final String shortName;
  late final String officialSiteUrl;
  //late final int franchiseId;
  late final bool active;

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    //link = json['link'];
    // venue = Venue.fromJson(json['venue']);
    // abbreviation = json['abbreviation'];
    teamName = json['teamName'];
    locationName = json['locationName'];
    firstYearOfPlay = json['firstYearOfPlay'];
    division = Division.fromJson(json['division']);
    conference = Conference.fromJson(json['conference']);
    franchise = Franchise.fromJson(json['franchise']);
    // shortName = json['shortName'];
    officialSiteUrl = json['officialSiteUrl'];
    //franchiseId = json['franchiseId'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    // _data['link'] = link;
    // _data['venue'] = venue.toJson();
    // _data['abbreviation'] = abbreviation;
    _data['teamName'] = teamName;
    // _data['locationName'] = locationName;
    _data['firstYearOfPlay'] = firstYearOfPlay;
    _data['division'] = division.toJson();
    _data['conference'] = conference.toJson();
    _data['franchise'] = franchise.toJson();
    //  _data['shortName'] = shortName;
    _data['officialSiteUrl'] = officialSiteUrl;
    //  _data['franchiseId'] = franchiseId;
    _data['active'] = active;
    return _data;
  }
}

class Venue {
  Venue({
    required this.id,
    required this.name,
    required this.link,
    required this.city,
    required this.timeZone,
  });
  late final int id;
  late final String name;
  late final String link;
  late final String city;
  late final TimeZone timeZone;

  Venue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    city = json['city'];
    timeZone = TimeZone.fromJson(json['timeZone']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['link'] = link;
    _data['city'] = city;
    _data['timeZone'] = timeZone.toJson();
    return _data;
  }
}

class TimeZone {
  TimeZone({
    required this.id,
    required this.offset,
    required this.tz,
  });
  late final String id;
  late final int offset;
  late final String tz;

  TimeZone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    offset = json['offset'];
    tz = json['tz'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['offset'] = offset;
    _data['tz'] = tz;
    return _data;
  }
}

class Division {
  Division({
    required this.id,
    required this.name,
    required this.nameShort,
    required this.link,
    required this.abbreviation,
  });
  late final int id;
  late final String name;
  late final String nameShort;
  late final String link;
  late final String abbreviation;

  Division.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameShort = json['nameShort'];
    link = json['link'];
    abbreviation = json['abbreviation'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['nameShort'] = nameShort;
    _data['link'] = link;
    _data['abbreviation'] = abbreviation;
    return _data;
  }
}

class Conference {
  Conference({
    required this.id,
    required this.name,
    required this.link,
  });
  late final int id;
  late final String name;
  late final String link;

  Conference.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['link'] = link;
    return _data;
  }
}

class Franchise {
  Franchise({
    required this.franchiseId,
    required this.teamName,
    required this.link,
  });
  late final int franchiseId;
  late final String teamName;
  late final String link;

  Franchise.fromJson(Map<String, dynamic> json) {
    franchiseId = json['franchiseId'];
    teamName = json['teamName'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['franchiseId'] = franchiseId;
    _data['teamName'] = teamName;
    _data['link'] = link;
    return _data;
  }
}
