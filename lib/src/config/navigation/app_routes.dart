import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
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
      NameRoute.teamsScreen.path: (context, state, data) {
        return const TeamsScreen();
      },
      NameRoute.favoriteScreen.path: (context, state, data) {
        return const FavoriteTeamsScreen();
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