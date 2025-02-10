enum NasaRoverTypes {
  curiosity(displayName: 'Curiosity', name: 'curiosity'),
  opportunity(displayName: 'Opportunity', name: 'opportunity'),
  spirit(displayName: 'Spirit', name: 'spirit');

  const NasaRoverTypes({required this.displayName, required this.name});

  final String displayName;
  final String name;
}
