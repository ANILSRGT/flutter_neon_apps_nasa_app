enum HomePageLibraries {
  mars(query: 'mars', title: 'Mars'),
  earth(query: 'earth', title: 'Earth'),
  stars(query: 'stars', title: 'Stars'),
  asteroids(query: 'asteroids', title: 'Asteroids'),
  galaxies(query: 'galaxies', title: 'Galaxies'),
  planets(query: 'planets', title: 'Planets'),
  satellites(query: 'satellites', title: 'Satellites'),
  space(query: 'space', title: 'Space'),
  sun(query: 'sun', title: 'Sun'),
  universe(query: 'moon', title: 'Moon');

  const HomePageLibraries({required this.query, required this.title});

  final String query;
  final String title;
}
