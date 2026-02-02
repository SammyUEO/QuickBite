import '../models/food_item.dart';

/// Rețete pentru Mic Dejun
class BreakfastFoods {
  static const List<FoodItem> items = [
    FoodItem(
      name: 'Pancakes Americane 🥞',
      description:
          'Clătite pufoase și delicioase, perfecte pentru un mic dejun energizant! Servite cu sirop de arțar, fructe proaspete și unt.',
      imageUrl: 'assets/images/pancakes.jpg',
      category: 'SUA',
      prepTime: 20,
      difficulty: 'Ușor',
      mealType: MealType.breakfast,
      isVegetarian: true,
      ingredients: [
        'Făină - 200g',
        'Ouă - 2',
        'Lapte - 250ml',
        'Zahăr - 2 linguri',
        'Praf de copt - 1 linguriță',
        'Sare - 1 praf',
        'Unt pentru prăjit',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește aluatul',
          description:
              'Amestecă făina, praful de copt, zahărul și sarea într-un bol mare.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Adaugă ingredientele umede',
          description:
              'Într-un alt bol, bate ouăle cu laptele. Apoi toarnă peste ingredientele uscate și amestecă până obții un aluat omogen.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Încălzește tigaia',
          description: 'Pune tigaia la foc mediu și adaugă puțin unt.',
          timerMinutes: 1,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Prăjește pancakes',
          description:
              'Toarnă câte o polonic de aluat în tigaie. Când apar bule la suprafață (aprox 2-3 min), întoarce pancake-ul și gătește încă 2 minute.',
          timerMinutes: 3,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Servește',
          description:
              'Stivuiește pancakes și servește cu sirop de arțar, fructe și unt!',
        ),
      ],
    ),
    FoodItem(
      name: 'Omletă cu Legume 🍳',
      description:
          'Omletă nutritivă și colorată, plină de legume proaspete. Perfectă pentru un start sănătos al zilei!',
      imageUrl: 'assets/images/omelette.jpg',
      category: 'Internațional',
      prepTime: 15,
      difficulty: 'Ușor',
      mealType: MealType.breakfast,
      isVegetarian: true,
      ingredients: [
        'Ouă - 3',
        'Ardei gras - 1',
        'Roșie - 1',
        'Ceapă - 1/2',
        'Brânză - 50g',
        'Sare, piper',
        'Ulei de măsline',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește legumele',
          description: 'Taie ardeiul, roșia și ceapa în cubulețe mici.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Călește legumele',
          description:
              'Încălzește o tigaie cu ulei și călește legumele 3-4 minute.',
          timerMinutes: 4,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Bate ouăle',
          description: 'Bate ouăle într-un bol, adaugă sare și piper.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Gătește omleta',
          description:
              'Toarnă ouăle peste legume, adaugă brânza și lasă la foc mic 3-4 minute.',
          timerMinutes: 4,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Servește',
          description: 'Împăturește omleta și servește caldă!',
        ),
      ],
    ),
    FoodItem(
      name: 'Smoothie Bowl Tropical 🥥',
      description:
          'Bowl fresh și colorat cu fructe tropicale, perfect pentru o dimineață revigorantă!',
      imageUrl: 'assets/images/smoothie_bowl.jpg',
      category: 'Internațional',
      prepTime: 10,
      difficulty: 'Ușor',
      mealType: MealType.breakfast,
      isVegetarian: true,
      ingredients: [
        'Banane înghețate - 2',
        'Mango - 1',
        'Lapte de cocos - 100ml',
        'Granola',
        'Fructe proaspete pentru topping',
        'Semințe de chia',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Blendează fructele',
          description:
              'Pune bananele înghețate, mango și laptele de cocos în blender și mixează până obții o consistență cremoasă.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Toarnă în bol',
          description: 'Toarnă smoothie-ul într-un bol.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Adaugă toppinguri',
          description:
              'Decorează cu granola, fructe proaspete tăiate și semințe de chia.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Servește imediat',
          description: 'Gustă din acest deliciu tropical!',
        ),
      ],
    ),
    FoodItem(
      name: 'Croissant Franțuzesc 🥐',
      description:
          'Cornuri franțuzești pufoase și fragede cu multe straturi de unt. Perfecțiunea pentru mic dejun!',
      imageUrl: 'assets/images/croissant.jpg',
      category: 'Franța',
      prepTime: 240,
      difficulty: 'Dificil',
      mealType: MealType.breakfast,
      isVegetarian: true,
      ingredients: [
        'Făină - 500g',
        'Unt rece - 280g',
        'Lapte - 250ml',
        'Zahăr - 60g',
        'Drojdie - 10g',
        'Sare - 10g',
        'Ou pentru uns',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește aluatul',
          description:
              'Amestecă făina, zahărul, sarea și drojdia. Adaugă lapte și frământă 10 minute. Lasă la frigider 1 oră.',
          timerMinutes: 60,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Laminează',
          description:
              'Întinde aluatul, pune untul la mijloc, închide. Întinde și împăturește în 3. Repetă de 3 ori cu odihnă.',
          timerMinutes: 90,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Modelează croissante',
          description:
              'Întinde aluatul 3mm grosime. Taie triunghiuri și rulează. Lasă la dospit 2 ore.',
          timerMinutes: 120,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Coace',
          description:
              'Unge cu ou bătut. Coace la 200°C 15-18 minute până devin aurii!',
          timerMinutes: 18,
        ),
      ],
    ),
    FoodItem(
      name: 'Avocado Toast 🥑',
      description:
          'Toast crocant cu avocado cremos, ou poșat și semințe. Mic dejun sănătos și energizant!',
      imageUrl: 'assets/images/avocado_toast.jpg',
      category: 'Internațional',
      prepTime: 15,
      difficulty: 'Ușor',
      mealType: MealType.breakfast,
      isVegetarian: true,
      ingredients: [
        'Pâine integrală - 2 felii',
        'Avocado - 1',
        'Ou - 1',
        'Lămâie - 1/2',
        'Semințe susan/chia',
        'Sare, piper',
        'Fulgi chilli (opțional)',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Prăjește pâinea',
          description:
              'Prăjește feliile de pâine până devin aurii și crocante.',
          timerMinutes: 3,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește avocado',
          description:
              'Zdrobește avocado cu furculița, adaugă suc de lămâie, sare și piper.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Gătește oul',
          description:
              'Fierbe apă cu puțin oțet. Sparge oul într-un bol mic și toarnă delicat în apă. Lasă 3-4 minute.',
          timerMinutes: 4,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Asamblează',
          description:
              'Întinde avocado pe toast, așază oul poșat deasupra, presară semințe și condimente!',
        ),
      ],
    ),
  ];
}
