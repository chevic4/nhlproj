enum NameRoute {
  mainScreen('/'),
  homeScreen('/home'),
  teamsScreen('/home/teams'),
  favoriteScreen('/home/favoriteteams');

  final Pattern path;
  const NameRoute(this.path);
}
