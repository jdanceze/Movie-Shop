class Movie {
  final int price;
  final String id, title, image, spec;
  bool isSelected;
  Movie({this.id, this.price, this.title, this.image, this.spec, this.isSelected});
}

List<Movie> Movies = [
  Movie(
    id: '1',
    price: 300,
    title: "Skyfall",
    spec: "James bond action movie",
    image: "./assets/images/Skyfall.jpg",
    isSelected: false,
  ),
  Movie(
    id: '2',
    price: 350,
    title: "Specter",
    spec: "James bond the newest movie",
    image: "assets/images/Spector.jpg",
    isSelected: false,
  ),
  Movie(
    id: '3',
    price: 120,
    title: "Casino",
    spec: "James bond movie by Daniel Creg",
    image: "assets/images/Casino.jpg",
    isSelected: false,
  ),
  Movie(
    id: '4',
    price: 500,
    title: "Goldfinger",
    spec: "James bond old and classic action movie",
    image: "assets/images/Goldfinger.jpg",
    isSelected: false,
  ),
  Movie(
    id: '5',
    price: 1250,
    title: "Spiderman",
    spec: "Superhero movie that is very famous",
    image: "assets/images/Spiderman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '6',
    price: 2500,
    title: "Superman",
    spec: "Superhero movie By DC comic",
    image: "assets/images/Superman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '7',
    price: 720,
    title: "Batman",
    spec: "Superhero movie By DC comic that is very dark",
    image: "assets/images/Batman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '8',
    price: 199,
    title: "WW",
    spec: "Superhero movie By DC comic that the female main actor ",
    image: "assets/images/Wonderwoman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '9',
    price: 40000,
    title: "Evangelion",
    spec: "Classic anime",
    image: "assets/images/Evangelion.jpg",
    isSelected: false,
  ),
  Movie(
    id: '10',
    price: 25,
    title: "Jazz 4G",
    spec: "Thai comady movie",
    image: "assets/images/4G.jpg",
    isSelected: false,

  ),
];
