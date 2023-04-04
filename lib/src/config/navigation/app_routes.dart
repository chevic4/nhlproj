import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/screens/detail_screen.dart';
import 'package:nhlproj/src/presentation/screens/favorite_teams_screen_nested.dart';
import 'package:nhlproj/src/presentation/screens/teams_screen_nested.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/main_screen.dart';
import 'names_routes.dart';

class AppRoutes {
  static Map<Pattern, dynamic Function(BuildContext, BeamState, Object?)>
      routes() {
    return {
      NameRoute.mainScreen.path: (context, state, data) => const MainScreen(),
      NameRoute.homeScreen.path: (context, state, data) => const HomeScreen(),
      NameRoute.detailTeamScreen.path: (context, state, data) {
        final team = data as TeamEntity;
        return DetailScreen(teamData: team);
      },
      NameRoute.teamsScreen.path: (context, state, data) {
        final teamsList = data as List<TeamEntity>;
        return TeamsScreen(
          teams: teamsList,
        );
      },
      NameRoute.favoriteScreen.path: (context, state, data) {
        final favoriteTeamsList = data as List<TeamEntity>;
        return FavoriteTeamsScreen(
          favoriteTeams: favoriteTeamsList,
        );
      }
    };
  }
}





/*
routes: {
        '/': ,
        '/books/:bookId': (context, state, data) {
          final bookId = state.pathParameters['bookId'];
          final book = books.firstWhere((book) => book['id'] == bookId);
          return BeamPage(
            key: ValueKey('book-$bookId'),
            title: book['title'],
            child: BookDetailsScreen(book: book),
            onPopPage: (context, delegate, _, page) {
              delegate.update(
                configuration: RouteInformation(
                  location: '/?tab=books',
                ),
                rebuild: false,
              );
              return true;
            },
          );
        },
        'articles/:articleId': (context, state, data) {
          final articleId = state.pathParameters['articleId'];
          final article =
              articles.firstWhere((article) => article['id'] == articleId);
          return BeamPage(
            key: ValueKey('articles-$articleId'),
            title: article['title'],
            child: ArticleDetailsScreen(article: article),
            onPopPage: (context, delegate, _, page) {
              delegate.update(
                configuration: RouteInformation(
                  location: '/?tab=articles',
                ),
                rebuild: false,
              );
              return true;
            },
          );
        }
        */