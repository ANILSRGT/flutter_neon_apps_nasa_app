enum HomePageLibraries {
  mars(query: 'mars', title: 'Mars'),
  earth(query: 'earth', title: 'Earth'),
  stars(query: 'stars', title: 'Stars'),
  asteroids(query: 'asteroids', title: 'Asteroids');

  const HomePageLibraries({required this.query, required this.title});

  final String query;
  final String title;
}
