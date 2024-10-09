class Pet {
  final String name;
  final String breed;
  final String sex;
  final int age;
  final String image;

  Pet(this.name, this.breed, this.sex, this.age, this.image);
}

// Lista de pets fictícios
List<Pet> pets = [
  Pet('Bobby', 'Poodle', 'Masculino', 3, 'assets/pets/bobby.jpg'),
  Pet('Mimi', 'Persa', 'Feminino', 2, 'assets/pets/mimi.jpg'),
  // Adicione mais pets conforme necessário
];

List<Pet> adoptedPets = [];
