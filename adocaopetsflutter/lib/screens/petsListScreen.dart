import 'package:adocaopetsflutter/screens/Pets.dart';
import 'package:adocaopetsflutter/screens/petsDetailsScreen.dart';
import 'package:flutter/material.dart';

final List<Pet> pets = [
  Pet(
    name: "Tamara",
    image: 'assets/img/pet_image.png',
    location: "Cotia(2.5 km)",
    sex: "Femêa",
    color: "Bege",
    breed: "Golden",
    weight: 12.0,
    description: "Cachorro que ama água e muito amoroso",
  ),
  Pet(
      name: 'Peter',
      image: 'assets/img/peter_beagle.png',
      location: 'São Paulo (6.9Km)',
      sex: 'Macho',
      color: 'Não sabo',
      breed: 'Beagle',
      weight: 8,
      description: 'Beagle doido para distribuir amor por ai'),
  Pet(
    name: "Tamara",
    image: 'assets/img/pet_image.png',
    location: "Cotia(2.5 km)",
    sex: "Femêa",
    color: "Bege",
    breed: "Golden",
    weight: 12.0,
    description: "Cachorro que ama água e muito amoroso",
  ),
  Pet(
      name: 'Peter',
      image: 'assets/img/peter_beagle.png',
      location: 'São Paulo (6.9Km)',
      sex: 'Macho',
      color: 'Não sabo',
      breed: 'Beagle',
      weight: 8,
      description: 'Beagle doido para distribuir amor por ai'),
  Pet(
      name: 'Peter',
      image: 'assets/img/peter_beagle.png',
      location: 'São Paulo (6.9Km)',
      sex: 'Macho',
      color: 'Não sabo',
      breed: 'Beagle',
      weight: 8,
      description: 'Beagle doido para distribuir amor por ai'),
  // Outros pets...
];

class PetsListScreen extends StatefulWidget {
  const PetsListScreen({super.key});

  @override
  State<PetsListScreen> createState() => _PetsListScreenState();
}

class _PetsListScreenState extends State<PetsListScreen> {
  int _selectedIndex = 0;

  // Função para alternar entre páginas do BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navegar para as páginas correspondentes ao clicar no menu
    if (index == 0) {
      // Aqui navega para a página de login e cadastro
      Navigator.pushNamed(context, '/login');
    } else if (index == 1) {
      // Aqui seria para a página da lista de pets adotados
      Navigator.pushNamed(context, '/adoptedPets');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pets Disponíveis',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.white, // Fundo da tela em preto
        child: ListView.builder(
          itemCount: pets.length,
          itemBuilder: (context, index) {
            final pet = pets[index];
            return GestureDetector(
              onTap: () {
                // Navega para a página de detalhes do pet ao clicar no card
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PetDetailScreen(pet: pet),
                  ),
                );
              },
              child: Card(
                color: Colors.grey[800], // Cor de fundo do card
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          pet.image,
                          fit: BoxFit.contain,
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pet.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Texto em branco
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${pet.breed} | ${pet.sex}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white, // Texto em branco
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              pet.location,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Ícone em branco
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.white), // Ícone em branco
            label: 'Me Adote',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white, // Ícones não selecionados em branco
        backgroundColor: Colors.black, // Fundo do BottomNavigationBar em preto
        onTap: _onItemTapped,
      ),
    );
  }
}
