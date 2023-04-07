enum NameRoute {
  mainScreen('/'),
  homeScreen('/home'),
  detailTeamScreen('/detailTeam'),
  teamsScreen('/home/teams'),
  favoriteScreen('/home/favoriteteams');

  final Pattern path;
  const NameRoute(this.path);
}
