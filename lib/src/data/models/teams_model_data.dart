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
    required this.link,
    required this.venue,
    required this.abbreviation,
    required this.triCode,
    required this.teamName,
    required this.locationName,
    required this.firstYearOfPlay,
    required this.division,
    required this.conference,
    required this.franchise,
    required this.roster,
    required this.nextGameSchedule,
    required this.shortName,
    required this.officialSiteUrl,
    required this.franchiseId,
    required this.active,
  });
  late final int id;
  late final String name;
  late final String link;
  late final Venue venue;
  late final String abbreviation;
  late final String triCode;
  late final String teamName;
  late final String locationName;
  late final int firstYearOfPlay;
  late final Division division;
  late final Conference conference;
  late final Franchise franchise;
  late final Roster roster;
  late final NextGameSchedule nextGameSchedule;
  late final String shortName;
  late final String officialSiteUrl;
  late final int franchiseId;
  late final bool active;

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    venue = Venue.fromJson(json['venue']);
    abbreviation = json['abbreviation'];
    triCode = json['triCode'];
    teamName = json['teamName'];
    locationName = json['locationName'];
    firstYearOfPlay = json['firstYearOfPlay'];
    division = Division.fromJson(json['division']);
    conference = Conference.fromJson(json['conference']);
    franchise = Franchise.fromJson(json['franchise']);
    roster = Roster.fromJson(json['roster']);
    nextGameSchedule = NextGameSchedule.fromJson(json['nextGameSchedule']);
    shortName = json['shortName'];
    officialSiteUrl = json['officialSiteUrl'];
    franchiseId = json['franchiseId'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['link'] = link;
    _data['venue'] = venue.toJson();
    _data['abbreviation'] = abbreviation;
    _data['triCode'] = triCode;
    _data['teamName'] = teamName;
    _data['locationName'] = locationName;
    _data['firstYearOfPlay'] = firstYearOfPlay;
    _data['division'] = division.toJson();
    _data['conference'] = conference.toJson();
    _data['franchise'] = franchise.toJson();
    _data['roster'] = roster.toJson();
    _data['nextGameSchedule'] = nextGameSchedule.toJson();
    _data['shortName'] = shortName;
    _data['officialSiteUrl'] = officialSiteUrl;
    _data['franchiseId'] = franchiseId;
    _data['active'] = active;
    return _data;
  }
}

class Venue {
  Venue({
    required this.name,
    required this.link,
    required this.city,
    required this.timeZone,
  });
  late final String name;
  late final String link;
  late final String city;
  late final TimeZone timeZone;

  Venue.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    link = json['link'];
    city = json['city'];
    timeZone = TimeZone.fromJson(json['timeZone']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
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
    required this.link,
  });
  late final int id;
  late final String name;
  late final String link;

  Division.fromJson(Map<String, dynamic> json) {
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
    required this.id,
    required this.name,
    required this.link,
  });
  late final int id;
  late final String name;
  late final String link;

  Franchise.fromJson(Map<String, dynamic> json) {
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

class Roster {
  Roster({
    required this.roster,
  });
  late final List<Roster> roster;

  Roster.fromJson(Map<String, dynamic> json) {
    roster = List.from(json['roster']).map((e) => Roster.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['roster'] = roster.map((e) => e.toJson()).toList();
    return _data;
  }
}

class NextGameSchedule {
  NextGameSchedule({
    required this.totalItems,
    required this.totalEvents,
    required this.totalGames,
    required this.totalMatches,
    required this.dates,
  });
  late final int totalItems;
  late final int totalEvents;
  late final int totalGames;
  late final int totalMatches;
  late final List<Dates> dates;

  NextGameSchedule.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    totalEvents = json['totalEvents'];
    totalGames = json['totalGames'];
    totalMatches = json['totalMatches'];
    dates = List.from(json['dates']).map((e) => Dates.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['totalItems'] = totalItems;
    _data['totalEvents'] = totalEvents;
    _data['totalGames'] = totalGames;
    _data['totalMatches'] = totalMatches;
    _data['dates'] = dates.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Dates {
  Dates({
    required this.date,
    required this.totalItems,
    required this.totalEvents,
    required this.totalGames,
    required this.totalMatches,
    required this.games,
    required this.events,
    required this.matches,
  });
  late final String date;
  late final int totalItems;
  late final int totalEvents;
  late final int totalGames;
  late final int totalMatches;
  late final List<Games> games;
  late final List<Events> events;
  late final List<Matches> matches;

  Dates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    totalItems = json['totalItems'];
    totalEvents = json['totalEvents'];
    totalGames = json['totalGames'];
    totalMatches = json['totalMatches'];
    games = List.from(json['games']).map((e) => Games.fromJson(e)).toList();
    events = List.from(json['events']).map((e) => Events.fromJson(e)).toList();
    matches =
        List.from(json['matches']).map((e) => Matches.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['totalItems'] = totalItems;
    _data['totalEvents'] = totalEvents;
    _data['totalGames'] = totalGames;
    _data['totalMatches'] = totalMatches;
    _data['games'] = games.map((e) => e.toJson()).toList();
    _data['events'] = events.map((e) => e.toJson()).toList();
    _data['matches'] = matches.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Games {
  Games({
    required this.gamePk,
    required this.link,
    required this.gameType,
    required this.season,
    required this.gameDate,
    required this.status,
    required this.teams,
    required this.venue,
    required this.content,
  });
  late final int gamePk;
  late final String link;
  late final String gameType;
  late final String season;
  late final String gameDate;
  late final Status status;
  late final Teams teams;
  late final Venue venue;
  late final Content content;

  Games.fromJson(Map<String, dynamic> json) {
    gamePk = json['gamePk'];
    link = json['link'];
    gameType = json['gameType'];
    season = json['season'];
    gameDate = json['gameDate'];
    status = Status.fromJson(json['status']);
    teams = Teams.fromJson(json['teams']);
    venue = Venue.fromJson(json['venue']);
    content = Content.fromJson(json['content']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gamePk'] = gamePk;
    _data['link'] = link;
    _data['gameType'] = gameType;
    _data['season'] = season;
    _data['gameDate'] = gameDate;
    _data['status'] = status.toJson();
    _data['teams'] = teams.toJson();
    _data['venue'] = venue.toJson();
    _data['content'] = content.toJson();
    return _data;
  }
}

class Status {
  Status({
    required this.abstractGameState,
    required this.codedGameState,
    required this.detailedState,
    required this.statusCode,
    required this.startTimeTBD,
  });
  late final String abstractGameState;
  late final String codedGameState;
  late final String detailedState;
  late final String statusCode;
  late final bool startTimeTBD;

  Status.fromJson(Map<String, dynamic> json) {
    abstractGameState = json['abstractGameState'];
    codedGameState = json['codedGameState'];
    detailedState = json['detailedState'];
    statusCode = json['statusCode'];
    startTimeTBD = json['startTimeTBD'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['abstractGameState'] = abstractGameState;
    _data['codedGameState'] = codedGameState;
    _data['detailedState'] = detailedState;
    _data['statusCode'] = statusCode;
    _data['startTimeTBD'] = startTimeTBD;
    return _data;
  }
}

class Content {
  Content({
    required this.link,
  });
  late final String link;

  Content.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['link'] = link;
    return _data;
  }
}

class Events {
  Events();

  Events.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Matches {
  Matches();

  Matches.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
