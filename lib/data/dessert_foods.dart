import '../models/food_item.dart';

/// Rețete pentru Deserturi
class DessertFoods {
  static const List<FoodItem> items = [
    FoodItem(
      name: 'Tiramisu 🍰',
      description:
          'Desertul italian clasic cu piscături înmuiate în cafea, cremă de mascarpone și cacao. Rafinament pur!',
      imageUrl: 'assets/images/tiramisu.jpg',
      category: 'Italia',
      prepTime: 30,
      difficulty: 'Mediu',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Piscături Savoiardi - 300g',
        'Mascarpone - 500g',
        'Ouă - 4',
        'Zahăr - 100g',
        'Cafea espresso - 300ml',
        'Cacao pudră',
        'Amaretto (opțional)',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește crema',
          description:
              'Separă gălbenușurile de albușuri. Bate gălbenușurile cu zahărul până se albesc. Adaugă mascarpone și amestecă.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Bate albușurile',
          description:
              'Bate albușurile spumă tare. Încorporează delicat în crema de mascarpone.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Pregătește cafeaua',
          description:
              'Lasă cafeaua să se răcească. Adaugă Amaretto dacă dorești.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Asamblează tiramisu',
          description:
              'Înmoaie rapid piscăturile în cafea și așază un strat în tavă. Acoperă cu jumătate din cremă. Repetă.',
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Răcește',
          description:
              'Pudrezează cacao deasupra. Ține la frigider minim 4 ore sau peste noapte.',
          timerMinutes: 240,
        ),
      ],
    ),
    FoodItem(
      name: 'Cheesecake New York 🍰',
      description:
          'Cheesecake cremos și bogat cu blat de biscuiți. Desertul american de referință!',
      imageUrl: 'assets/images/cheesecake.jpg',
      category: 'SUA',
      prepTime: 90,
      difficulty: 'Dificil',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Brânză Philadelphia - 600g',
        'Zahăr - 200g',
        'Ouă - 3',
        'Smântână - 200ml',
        'Esență vanilie',
        'Biscuiți digestivi - 200g',
        'Unt - 100g',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește blatul',
          description:
              'Macină biscuiții, amestecă cu untul topit. Presează în formă și pune la frigider 30 minute.',
          timerMinutes: 30,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește umplutura',
          description:
              'Bate brânza cu zahărul până e cremoasă. Adaugă ouăle unul câte unul, apoi smântâna și vanilia.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Toarnă în formă',
          description: 'Toarnă compoziția peste blatul răcit.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Coace',
          description:
              'Coace la 160°C timp de 55-60 minute. Centrul trebuie să mai tremure puțin.',
          timerMinutes: 60,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Răcește',
          description:
              'Lasă să se răcească complet, apoi ține la frigider minimum 4 ore. Decorează cu fructe înainte de servire!',
          timerMinutes: 240,
        ),
      ],
    ),
    FoodItem(
      name: 'Lava Cake Ciocolată 🍫',
      description:
          'Prăjitură caldă cu inimă de ciocolată topită. Un desert spectaculos care impresionează!',
      imageUrl: 'assets/images/lava_cake.jpg',
      category: 'Franța',
      prepTime: 25,
      difficulty: 'Mediu',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Ciocolată neagră - 200g',
        'Unt - 100g',
        'Ouă - 2',
        'Gălbenușuri - 2',
        'Zahăr - 60g',
        'Făină - 30g',
        'Esență vanilie',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Topește ciocolata',
          description:
              'Topește ciocolata cu untul la bain-marie sau la microunde.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește aluatul',
          description:
              'Bate ouăle cu gălbenușurile și zahărul până se albesc. Adaugă ciocolata topită, vanilia și făina.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Umple formele',
          description:
              'Unge 4 forme mici cu unt și pudră cu cacao. Distribuie aluatul în forme.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Coace',
          description:
              'Coace la 200°C timp de 10-12 minute. Centrul trebuie să fie încă moale!',
          timerMinutes: 12,
        ),
        CookingStep(
          stepNumber: 5,
          title: 'Servește imediat',
          description:
              'Răstoarnă pe farfurie, pudrezază cu zahăr pudră și servește cu înghețată vanilie!',
        ),
      ],
    ),
    FoodItem(
      name: 'Brownie Ciocolată 🍫',
      description:
          'Brownies dense și ciocolatoase, cu crustă crocantă și interior moale. Raiul iubitorilor de ciocolată!',
      imageUrl: 'assets/images/brownie.jpg',
      category: 'SUA',
      prepTime: 40,
      difficulty: 'Ușor',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Ciocolată neagră - 200g',
        'Unt - 150g',
        'Zahăr - 200g',
        'Ouă - 3',
        'Făină - 100g',
        'Cacao - 30g',
        'Esență vanilie',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Topește ciocolata',
          description:
              'Topește ciocolata cu untul la bain-marie. Lasă să se răcească puțin.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Bate ouăle',
          description:
              'Bate ouăle cu zahărul până se albesc și cresc în volum.',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Combină',
          description:
              'Adaugă ciocolata topită peste ouă. Incorporează făina, cacao și vanilia.',
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Coace',
          description:
              'Toarnă în tavă căptușită. Coace la 180°C 25-30 minute. Centrul să fie puțin moale!',
          timerMinutes: 30,
        ),
      ],
    ),
    FoodItem(
      name: 'Clătite cu Nutella 🥞',
      description:
          'Clătite fine și delicioase umplute cu Nutella cremoasă. Simplitate delicioasă!',
      imageUrl: 'assets/images/clatite.jpg',
      category: 'Internațional',
      prepTime: 20,
      difficulty: 'Ușor',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Făină - 250g',
        'Lapte - 500ml',
        'Ouă - 3',
        'Zahăr - 2 linguri',
        'Sare - 1 praf',
        'Nutella',
        'Banane (opțional)',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Pregătește aluatul',
          description:
              'Bate ouăle cu zahărul. Adaugă făina alternând cu laptele până obții un aluat fluid.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Lasă la odihnit',
          description: 'Lasă aluatul să stea 15 minute.',
          timerMinutes: 15,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Prăjește clătitele',
          description:
              'Încinge tigaia, toarnă o polonică de aluat și răspândește uniform. Gătește 1-2 min pe fiecare parte.',
          timerMinutes: 2,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Umple și servește',
          description:
              'Întinde Nutella pe fiecare clătită caldă, adaugă felii de banană și rulează!',
        ),
      ],
    ),
    FoodItem(
      name: 'Crème Brûlée 🍮',
      description:
          'Desert francez elegant cu cremă de vanilie și crustă caramelizată. Rafinament desăvârșit!',
      imageUrl: 'assets/images/creme_brulee.jpg',
      category: 'Franța',
      prepTime: 90,
      difficulty: 'Dificil',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Smântână grasă - 500ml',
        'Gălbenușuri - 6',
        'Zahăr - 100g + extra pentru caramelizare',
        'Esență vanilie sau păstaie',
        'Sare - 1 praf',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Încălzește smântâna',
          description:
              'Încălzește smântâna cu vanilia până este aproape de fierbere. Nu fierbe!',
          timerMinutes: 5,
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Pregătește crema',
          description:
              'Bate gălbenușurile cu zahărul. Adaugă treptat smântâna caldă amestecând constant.',
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Coace',
          description:
              'Toarnă în ramequine. Coace la bain-marie în cuptor la 150°C timp de 30-35 minute.',
          timerMinutes: 35,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Răcește și caramelizează',
          description:
              'Răcește complet (minim 2 ore). Presară zahăr pe suprafață și caramelizează cu flacără.',
          timerMinutes: 120,
        ),
      ],
    ),
    FoodItem(
      name: 'Eclere 🥐',
      description:
          'Eclere franțuzești umplute cu cremă de vanilie și acoperite cu glazură de ciocolată!',
      imageUrl: 'assets/images/ecler.jpg',
      category: 'Franța',
      prepTime: 80,
      difficulty: 'Dificil',
      mealType: MealType.dessert,
      isVegetarian: true,
      ingredients: [
        'Apă - 250ml',
        'Unt - 100g',
        'Făină - 150g',
        'Ouă - 4',
        'Lapte - 500ml pentru cremă',
        'Gălbenușuri - 4',
        'Zahăr - 100g',
        'Ciocolată pentru glazură - 100g',
      ],
      steps: [
        CookingStep(
          stepNumber: 1,
          title: 'Fă aluatul choux',
          description:
              'Fierbe apa cu untul. Adaugă făina deodată și amestecă până se desprinde. Răcește și adaugă ouăle unul câte unul.',
        ),
        CookingStep(
          stepNumber: 2,
          title: 'Coace eclere',
          description:
              'Poșează eclere pe tavă. Coace la 200°C 25-30 minute. Nu deschide cuptorul!',
          timerMinutes: 30,
        ),
        CookingStep(
          stepNumber: 3,
          title: 'Pregătește crema',
          description:
              'Fierbe laptele. Bate gălbenușurile cu zahărul și făină. Combină cu laptele și fierbe până se îngroașă.',
          timerMinutes: 10,
        ),
        CookingStep(
          stepNumber: 4,
          title: 'Umple și glazurează',
          description:
              'Umple eclerele cu cremă. Topește ciocolata și acoperă vârful fiecăruia!',
        ),
      ],
    ),
  ];
}
