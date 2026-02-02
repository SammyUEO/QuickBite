import '../models/food_item.dart';

/// Rețete pentru Prânz
class LunchFoods {
  static const List<FoodItem> items = [
    FoodItem(
      name: 'Pizza Margherita 🍕',
      description:
          'Pizza autentică italiană cu aluat pufos, sos de roșii proaspăt, mozzarella cremoasă și busuioc aromat.',
      imageUrl: 'assets/images/pizza.jpg',
      category: 'Italia',
      prepTime: 45,
      difficulty: 'Mediu',
      mealType: MealType.lunch,
      isVegetarian: true,
      ingredients: [
        'Aluat de pizza',
        'Sos de roșii - 200g',
        'Mozzarella - 250g',
        'Busuioc proaspăt',
        'Ulei de măsline',
        'Sare, oregano',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește aluatul',
          description:
              'Întinde aluatul de pizza pe o suprafață unsă cu făină. Modelează un cerc de aproximativ 30cm diametru.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Adaugă sosul',
          description:
              'Întinde sosul de roșii uniform pe aluat, lăsând 1-2 cm liberi la margini.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Adaugă brânza',
          description:
              'Distribuie mozzarella tăiată bucăți peste sos. Stropește cu ulei de măsline.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Coace pizza',
          description:
              'Pune pizza în cuptor preîncălzit la 220°C și coace 15-18 minute până devine aurie.',
          timerMinutes: 18,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Finalizează',
          description:
              'Scoate din cuptor, adaugă busuioc proaspăt și servește imediat!',
        ),
      ],
    ),
    FoodItem(
      name: 'Burger Clasic 🍔',
      description:
          'Burgerul perfect cu carne suculentă, legume crocante și sos special. Un clasic american irezistibil!',
      imageUrl: 'assets/images/burger.jpg',
      category: 'SUA',
      prepTime: 25,
      difficulty: 'Ușor',
      mealType: MealType.lunch,
      isVegetarian: false,
      ingredients: [
        'Chiflă pentru burger - 1',
        'Carne de vită tocată - 200g',
        'Salată iceberg',
        'Roșie - 2 felii',
        'Castraveți murați',
        'Ceapă roșie',
        'Brânză cheddar - 1 felie',
        'Sos burger',
        'Ketchup, muștar',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Modelează chiftele',
          description:
              'Condimentează carnea cu sare și piper. Modelează o chiftea rotundă de aproximativ 2cm grosime.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Gătește chiftea',
          description:
              'Pune chiftea pe grătar sau într-o tigaie la foc mare. Gătește 4 minute pe fiecare parte pentru medium.',
          timerMinutes: 8,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Adaugă brânza',
          description:
              'În ultimul minut, pune brânza pe chiftea să se topească.',
          timerMinutes: 1,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Pregătește chifla',
          description:
              'Taie chifla și prăjește-o ușor. Întinde sosul burger pe ambele părți.',
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Asamblează burgerul',
          description:
              'Așează salată, chiftea cu brânză, roșie, castraveți și ceapă. Închide cu partea de sus a chiflei.',
        ),
      ],
    ),
    FoodItem(
      name: 'Paste Carbonara 🍝',
      description:
          'Pasta italiană cremoasă cu bacon, ou și parmezan. Simplă dar incredibil de gustoasă!',
      imageUrl: 'assets/images/carbonara.jpg',
      category: 'Italia',
      prepTime: 25,
      difficulty: 'Mediu',
      mealType: MealType.lunch,
      isVegetarian: false,
      ingredients: [
        'Spaghetti - 400g',
        'Bacon/Pancetta - 200g',
        'Ouă - 3',
        'Parmezan - 100g',
        'Usturoi - 2 căței',
        'Sare, piper negru',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Fierbe pastele',
          description:
              'Pune apa la fiert cu sare. Adaugă spaghetele și fierbe conform instrucțiunilor.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Prăjește bacon-ul',
          description:
              'Taie bacon-ul cubulețe și prăjește cu usturoiul până devine crocant.',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Pregătește sosul',
          description:
              'Bate ouăle cu parmezanul ras și piper negru într-un bol.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Combină totul',
          description:
              'Scurge pastele, pune peste bacon, dă focul jos și toarnă sosul de ouă. Amestecă rapid!',
        ),
      ],
    ),
    FoodItem(
      name: 'Sushi Roll 🍣',
      description:
          'Rulouri de sushi delicioase cu somon proaspăt, avocado și castraveți. O artă culinară japoneză!',
      imageUrl: 'assets/images/sushi.jpg',
      category: 'Japonia',
      prepTime: 60,
      difficulty: 'Dificil',
      mealType: MealType.lunch,
      isVegetarian: false,
      ingredients: [
        'Orez pentru sushi - 300g',
        'Oțet de orez - 3 linguri',
        'Alge nori - 8 foi',
        'Somon proaspăt - 200g',
        'Avocado - 2',
        'Castravete - 1',
        'Sos de soia',
        'Wasabi',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește orezul',
          description:
              'Fierbe orezul conform instrucțiunilor. Amestecă cu oțet de orez și lasă să se răcească.',
          timerMinutes: 20,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește umplutura',
          description:
              'Taie somonul, avocado și castravetele în fâșii lungi și subțiri.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Așază și rulează',
          description:
              'Pune nori pe rogojină, întinde orez, adaugă umplutura și rulează strâns.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Taie și servește',
          description:
              'Udă cuțitul și taie în 8 bucăți egale. Servește cu sos de soia și wasabi!',
        ),
      ],
    ),
    FoodItem(
      name: 'Salată Caesar 🥗',
      description:
          'Salată crocantă cu pui la grătar, parmezan și dressing cremos. Proaspătă și sățioasă!',
      imageUrl: 'assets/images/caesar.jpg',
      category: 'SUA',
      prepTime: 20,
      difficulty: 'Ușor',
      mealType: MealType.lunch,
      isVegetarian: false,
      ingredients: [
        'Salată romaine - 2',
        'Piept de pui - 300g',
        'Parmezan - 50g',
        'Crutoane',
        'Maioneză - 3 linguri',
        'Usturoi - 1 cățel',
        'Suc de lămâie',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Gătește puiul',
          description:
              'Condimentează pieptul de pui și gătește la grătar 6-7 minute pe fiecare parte.',
          timerMinutes: 14,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește dressingul',
          description:
              'Amestecă maioneză, usturoi pisat, parmezan ras și suc de lămâie.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Asamblează salata',
          description:
              'Rupe salata, adaugă dressing, pui tăiat fâșii, crutoane și parmezan!',
        ),
      ],
    ),
    FoodItem(
      name: 'Falafel 🧆',
      description:
          'Chifteluțe crocante din năut, perfecte pentru vegetarieni. Un deliciu din Orientul Mijlociu!',
      imageUrl: 'assets/images/falafel.jpg',
      category: 'Orientală',
      prepTime: 40,
      difficulty: 'Mediu',
      mealType: MealType.lunch,
      isVegetarian: true,
      ingredients: [
        'Năut uscat - 400g',
        'Ceapă - 1',
        'Usturoi - 4 căței',
        'Pătrunjel proaspăt',
        'Coriandru proaspăt',
        'Cumin - 1 linguriță',
        'Praf de copt - 1/2 linguriță',
        'Făină',
        'Ulei pentru prăjit',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Procesează ingredientele',
          description:
              'Pune năutul înmuiat peste noapte în blender cu ceapă, usturoi, pătrunjel, coriandru și condimente.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Adaugă făină și răcește',
          description:
              'Transferă compoziția într-un bol, adaugă făină și lasă la frigider 30 minute.',
          timerMinutes: 30,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Modelează',
          description: 'Formează bile de mărimea unei nuci. Aplatizează ușor.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Prăjește',
          description:
              'Prăjește în ulei încins 3-4 minute până devin aurii. Servește cu tahini!',
          timerMinutes: 4,
        ),
      ],
    ),
  ];
}
