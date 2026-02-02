import '../models/food_item.dart';

/// Rețete pentru Cină
class DinnerFoods {
  static const List<FoodItem> items = [
    FoodItem(
      name: 'Tacos Mexicani 🌮',
      description:
          'Tacos autentici cu carne condimentată, legume proaspete și guacamole. O explozie de arome!',
      imageUrl: 'assets/images/tacos.jpg',
      category: 'Mexic',
      prepTime: 30,
      difficulty: 'Ușor',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Tortillas - 8',
        'Carne de vită tocată - 500g',
        'Fasole neagră - 1 conservă',
        'Roșii - 2',
        'Salată',
        'Smântână',
        'Brânză rasă',
        'Avocado - 2',
        'Lămâie - 1',
        'Condimente taco',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește carnea',
          description:
              'Prăjește carnea tocată la foc mare până se rumenește. Adaugă condimentele taco și fasolea. Amestecă bine.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Fă guacamole',
          description:
              'Zdrobește avocado, adaugă suc de lămâie, sare și piper.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Pregătește garniturile',
          description: 'Taie roșiile cubulețe, rupe salata și rade brânza.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Încălzește tortillas',
          description:
              'Încălzește fiecare tortilla 30 secunde pe fiecare parte.',
          timerMinutes: 1,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Asamblează tacos',
          description:
              'Pune carne pe tortilla, adaugă salată, roșii, brânză, guacamole și smântână. Împăturește și savurează!',
        ),
      ],
    ),
    FoodItem(
      name: 'Shawarma 🥙',
      description:
          'Shawarma delicioasă cu carne marinată, legume proaspete și sos de tahini. Un deliciu oriental!',
      imageUrl: 'assets/images/shawarma.jpg',
      category: 'Orientală',
      prepTime: 40,
      difficulty: 'Mediu',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Piept de pui - 500g',
        'Lipie - 4',
        'Roșii - 2',
        'Castraveți - 1',
        'Salată',
        'Ceapă roșie',
        'Tahini',
        'Iaurt',
        'Usturoi - 3 căți',
        'Condimente shawarma',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Marinează carnea',
          description:
              'Taie puiul fâșii și marinează cu condimente shawarma, usturoi și ulei timp de 30 minute.',
          timerMinutes: 30,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Gătește carnea',
          description:
              'Prăjește carnea la foc mare până se rumenește frumos, aproximativ 8-10 minute.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Pregătește sosul',
          description:
              'Amestecă tahini, iaurt, usturoi pisat, suc de lămâie, sare și piper.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Pregătește legumele',
          description: 'Taie roșiile, castraveții și ceapa fâșii subțiri.',
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Asamblează shawarma',
          description:
              'Încălzește lipia, adaugă carne, legume, salată și sos tahini. Înfășoară strâns și savurează!',
        ),
      ],
    ),
    FoodItem(
      name: 'Ramen Japonez 🍜',
      description:
          'Supă japoneză hrănitoare cu tăiței, ou fiert moale, porc și legume. Comfort food perfect!',
      imageUrl: 'assets/images/ramen.jpg',
      category: 'Japonia',
      prepTime: 50,
      difficulty: 'Dificil',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Tăiței ramen - 400g',
        'Carne de porc - 300g',
        'Ouă - 4',
        'Ciuperci shiitake',
        'Ceapă verde',
        'Bulion - 1.5L',
        'Sos de soia',
        'Miso paste - 2 linguri',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește bulionul',
          description:
              'Fierbe bulionul cu miso paste. Lasă să dea în clocot apoi reduce focul.',
          timerMinutes: 20,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Fierbe ouăle',
          description:
              'Fierbe ouăle 6-7 minute pentru gălbenuș moale. Răcește și curăță.',
          timerMinutes: 7,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Gătește carnea',
          description:
              'Prăjește carnea de porc până se rumenește. Taie fâșii subțiri.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Asamblează',
          description:
              'Pune tăițeii fierți în bol, adaugă bulion, carne, ou, ciuperci și ceapă verde!',
        ),
      ],
    ),
    FoodItem(
      name: 'Pad Thai 🍲',
      description:
          'Tăiței thailandezi cu creveți, ou, legume și sos tamarind. Un echilibru perfect de arome!',
      imageUrl: 'assets/images/pad_thai.jpg',
      category: 'Thailanda',
      prepTime: 35,
      difficulty: 'Mediu',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Tăiței de orez - 300g',
        'Creveți - 300g',
        'Ouă - 2',
        'Fasole păstăi',
        'Morcov - 1',
        'Ceapă verde',
        'Sos de pește - 3 linguri',
        'Sos tamarind - 2 linguri',
        'Arahide prăjite',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Înmoaie tăițeii',
          description:
              'Pune tăițeii în apă caldă și lasă să se înmoaie 8-10 minute.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Gătește creveții',
          description:
              'Prăjește creveții la foc mare 2-3 minute. Scoate deoparte.',
          timerMinutes: 3,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Combină totul',
          description:
              'Scramble ouăle, adaugă tăiței, sos, legume. Amestecă bine la foc mare.',
          timerMinutes: 3,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Finalizează',
          description:
              'Adaugă creveții înapoi. Servește cu arahide, ceapă verde și lămâie!',
        ),
      ],
    ),
    FoodItem(
      name: 'Sarmale 🍖',
      description:
          'Sărmăluțe tradiționale românești cu carne tocată, orez și condimente. Un clasic de sărbători!',
      imageUrl: 'assets/images/sarmale.jpg',
      category: 'România',
      prepTime: 180,
      difficulty: 'Dificil',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Carne tocată porc/vită - 1kg',
        'Orez - 200g',
        'Ceapă - 2',
        'Varză murată - 1kg',
        'Bulion - 500ml',
        'Cimbru',
        'Foi de dafin',
        'Sare, piper',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește umplutura',
          description:
              'Amestecă carnea cu orezul, ceapa tocată fin, sare, piper și cimbru.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Înfășoară sarmalele',
          description:
              'Pune 1-2 linguri de compoziție pe fiecare frunză. Înfășoară strâns.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Aranjează în oală',
          description:
              'Așază un strat de varză pe fund. Aranjează sarmalele, adaugă foi de dafin și bulion.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Gătește',
          description:
              'Fierbe la foc mic 2.5-3 ore. Servește cu smântână și mămăligă!',
          timerMinutes: 180,
        ),
      ],
    ),
    FoodItem(
      name: 'Paella Valenciana 🥘',
      description:
          'Orez spaniol cu fructe de mare, pui și șofran. Un festin colorat și aromat!',
      imageUrl: 'assets/images/paella.jpg',
      category: 'Spania',
      prepTime: 60,
      difficulty: 'Dificil',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Orez - 400g',
        'Pui - 300g',
        'Creveți - 200g',
        'Midii - 200g',
        'Ardei gras - 2',
        'Roșii - 3',
        'Șofran',
        'Mazăre - 100g',
        'Bulion - 1L',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește carnea',
          description:
              'Taie puiul bucăți și prăjește în paella până se rumenește.',
          timerMinutes: 8,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Gătește legumele',
          description:
              'În aceeași paella, călește ardeii, roșiile și usturoiul. Adaugă șofranul.',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Adaugă orezul',
          description:
              'Adaugă orezul și amestecă 2 minute. Toarnă bulionul fierbinte.',
          timerMinutes: 2,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Finalizează',
          description:
              'Aranjează puiul înapoi. Fierbe 15 min, apoi adaugă fructele de mare. Gătește încă 5-7 min.',
          timerMinutes: 22,
        ),
      ],
    ),
    FoodItem(
      name: 'Curry Indian 🍛',
      description:
          'Curry aromat cu pui, legume și lapte de cocos. O explozie de arome orientale!',
      imageUrl: 'assets/images/curry.jpg',
      category: 'India',
      prepTime: 45,
      difficulty: 'Mediu',
      mealType: MealType.dinner,
      isVegetarian: false,
      ingredients: [
        'Piept de pui - 500g',
        'Lapte de cocos - 400ml',
        'Roșii - 3',
        'Ceapă - 2',
        'Usturoi - 4 căței',
        'Ghimbir - 20g',
        'Curry paste - 2 linguri',
        'Coriandru proaspăt',
        'Orez basmati',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Călește aromele',
          description:
              'Călește ceapa, usturoiul și ghimbirul pisat până sunt fragede.',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Adaugă curry',
          description:
              'Adaugă curry paste și amestecă 1 minut să se elibereze aromele.',
          timerMinutes: 1,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Gătește puiul',
          description:
              'Adaugă puiul cuburi, roșiile și laptele de cocos. Lasă să fiarbă.',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Lasă la foc mic',
          description:
              'Reduce focul și lasă 25-30 minute. Servește cu orez basmati și coriandru!',
          timerMinutes: 30,
        ),
      ],
    ),
  ];
}
