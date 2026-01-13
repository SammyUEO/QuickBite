import '../models/food_item.dart';

/// Lista cu toate preparatele disponibile în aplicație
class FoodData {
  static const List<FoodItem> allFoods = [
    FoodItem(
      name: 'Pizza Margherita 🍕',
      description:
          'Imaginează-ți o bucată caldă de pizza autentică italiană, cu un aluat pufos la margini și crocant la bază! Sosul de roșii proaspăt se îmbină perfect cu mozzarella cremoasă care se topește în gură, iar frunzele de busuioc proaspăt adaugă acea aromă caracteristică care te transportă direct în inima Italiei. Această rețetă este atât de simplă încât nu ai cum să greșești, dar rezultatul va impresiona pe toată lumea! Perfect pentru o seară de vineri sau pentru o masă în familie.',
      imageUrl:
          'https://images.unsplash.com/photo-1604068549290-dea0e4a305ca?w=800',
      category: 'Italian',
      prepTime: 30,
      difficulty: 'Mediu',
      ingredients: [
        'Aluat de pizza',
        'Sos de roșii',
        'Mozzarella',
        'Busuioc proaspăt',
        'Ulei de măsline',
      ],
    ),
    FoodItem(
      name: 'Burger Clasic 🍔',
      description:
          'Cel mai satisfăcător burger pe care îl vei pregăti vreodată! Carnea de vită proaspătă, condimentată perfect și prăjită la grătar până devine suculentă pe dinăuntru și cu o crustă delicioasă pe exterior. Chifla pufoasă, prăjită ușor, ține împreună straturile de legume crocante - salată proaspătă, roșii zemoase, castraveți murați care adaugă acea notă acidulată perfectă. Și sos special? Acela care face diferența! Un burger simplu de preparat, dar atât de bun încât te va face să uiți de restaurante. Gata în doar 20 de minute!',
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800',
      category: 'American',
      prepTime: 20,
      difficulty: 'Ușor',
      ingredients: [
        'Chiflă pentru burger',
        'Carne de vită tocată',
        'Salată',
        'Roșii',
        'Castraveți murați',
        'Ceapă',
        'Sos special',
      ],
    ),
    FoodItem(
      name: 'Sushi Roll 🍣',
      description:
          'Transformă bucătăria ta într-un restaurant japonez premium! Aceste rulouri de sushi sunt o adevărată operă de artă culinară - orez perfect preparat, aromat cu oțet de orez, învelit în alge nori crocante. Somonul proaspăt se topește în gură, avocado-ul cremos adaugă o textură de neuitat, iar castraveții proaspăt tăiați oferă acea notă de prospețime. Da, necesită puțină răbdare și îndemânare, dar rezultatul te va face să te simți ca un adevărat maestru sushi! Impresionează-ți prietenii cu o cină sofisticată făcută chiar de tine. Merită fiecare minut!',
      imageUrl:
          'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=800',
      category: 'Japonez',
      prepTime: 45,
      difficulty: 'Dificil',
      ingredients: [
        'Orez pentru sushi',
        'Alge nori',
        'Somon proaspăt',
        'Avocado',
        'Castravete',
        'Sos de soia',
        'Wasabi',
      ],
    ),
    FoodItem(
      name: 'Tacos Mexicani 🌮',
      description:
          'Pregătește-te pentru o adevărată fiesta mexicană în propriul tău bucătărie! Carnea de pui marinată în condimente aromate devine atât de fragedă și gustoasă încât fiecare mușcătură este o explozie de savoare. Salsa proaspătă cu roșii suculente și ceapă picantă, guacamole cremos făcut din avocado perfect copt, smântână răcoroasă - toate acestea într-o tortilla caldă care le ține împreună. Rapid de făcut, ușor de personalizat după gustul tău, și atât de bun încât vei dori să îi faci săptămânal! Perfect pentru o seară distractivă cu prietenii.',
      imageUrl:
          'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?w=800',
      category: 'Mexican',
      prepTime: 25,
      difficulty: 'Ușor',
      ingredients: [
        'Tortilla',
        'Piept de pui',
        'Roșii',
        'Ceapă',
        'Avocado',
        'Smântână',
        'Condimente mexicane',
      ],
    ),
    FoodItem(
      name: 'Paste Carbonara 🍝',
      description:
          'Cel mai cremos, mai bogat și mai satisfăcător fel de paste pe care îl poți face acasă! Secretul? Simplu dar genial - căldura pastelor gătite proaspăt topește gălbenușurile și parmezanul, creând un sos catifелat care învelește fiecare fir de spaghetti. Bacon-ul crocant adaugă acea textură perfectă și aroma fumată irezistibilă. Fără smântână, fără compromisuri - doar ingrediente simple care creează magie! Gata în 20 de minute, dar gustul te va face să crezi că ai gătit ore întregi. Un clasic italian care nu dezamăgește niciodată!',
      imageUrl:
          'https://images.unsplash.com/photo-1612874742237-6526221588e3?w=800',
      category: 'Italian',
      prepTime: 20,
      difficulty: 'Mediu',
      ingredients: [
        'Spaghetti',
        'Bacon',
        'Ouă',
        'Parmezan',
        'Piper negru',
        'Usturoi',
      ],
    ),
    FoodItem(
      name: 'Salată Caesar 🥗',
      description:
          'Cine a zis că salata trebuie să fie plictisitoare? Această Salată Caesar este atât de gustoasă încât o vei prefera în fața oricărui fast-food! Pieptul de pui suculент la grătar, marșat perfect cu condimente, se așează peste un pat generos de salată romaine crocantă și proaspătă. Crutoanele crocante, aromațite cu usturoi, adaugă acea textură perfectă, iar parmezan-ul proaspăt ras completează ansamblul. Dressing-ul Caesar cremos, cu acea notă de anșoa și usturoi, leagă totul într-o armonie perfectă. Sănătos, ușor de făcut în 15 minute, și atât de bun încât vei dori să îl mănânci în fiecare zi!',
      imageUrl:
          'https://images.unsplash.com/photo-1546793665-c74683f339c1?w=800',
      category: 'Salată',
      prepTime: 15,
      difficulty: 'Ușor',
      ingredients: [
        'Salată romaine',
        'Piept de pui',
        'Crutoane',
        'Parmezan',
        'Sos Caesar',
      ],
    ),
    FoodItem(
      name: 'Ramen Japonez 🍜',
      description:
          'Ramen-ul perfect este ca un îmbrățișare caldă într-o zi rece - reconfortant, bogat și incredibil de satisfăcător! Bulionul, gătit pentru ore întregi, devine atât de aromat și complex încât fiecare înghițitură este o revelație. Tăițeii ramen perfecti, carnea de porc fragedă care se topește în gură, oul cu gălbenuș perfect moale, ceapa verde proaspătă - fiecare ingredient joacă rolul său perfect. Da, necesită timp și răbdare, dar când te așezi cu acel bol fumegând în fața ta, vei ști că a meritat fiecare secundă. Acesta este mâncarea care vindecă sufletul!',
      imageUrl:
          'https://images.unsplash.com/photo-1557872943-16a5ac26437e?w=800',
      category: 'Japonez',
      prepTime: 60,
      difficulty: 'Dificil',
      ingredients: [
        'Tăiței ramen',
        'Bulion de oase',
        'Carne de porc',
        'Ou fiert',
        'Ceapă verde',
        'Nori',
        'Bambus',
      ],
    ),
    FoodItem(
      name: 'Shawarma 🥙',
      description:
          'Cel mai bun street food din Orientul Mijlociu, acum direct în bucătăria ta! Carnea de pui marinată în condimente aromate - cumin, coriandru, cardamon - devine atât de suculentă și plină de gust încât te va face să dansezi din picior în picior în timpul așteptării. Lipia caldă și pufoasă ține împreună straturile de legume proaspete și crocante, iar sos-ul de usturoi cremos, cu acea notă de lămâie, este pur și simplu divin! În 30 de minute ai o masă completă, super gustoasă, care rivalizează cu orice restaurant! Perfect pentru o cină rapidă dar spectaculoasă.',
      imageUrl:
          'https://images.unsplash.com/photo-1529006557810-274b9b2fc783?w=800',
      category: 'Middle Eastern',
      prepTime: 30,
      difficulty: 'Mediu',
      ingredients: [
        'Lipie',
        'Piept de pui',
        'Salată',
        'Roșii',
        'Castraveți',
        'Sos de usturoi',
        'Condimente orientale',
      ],
    ),
    FoodItem(
      name: 'Pancakes 🥞',
      description:
          'Imaginează-ți dimineața perfectă: pancakes-uri pufoși și aurii, atât de moi și aromaṭi încât parfumul lor te va trezi din somn! Fiecare pancake este un norișor de fericire - pufos în interior, ușor caramelizat pe exterior. Când torni siropul de arțar cald peste ei, el se scurge lent, pătrunde în fiecare por, creând acea dulceață perfectă. Adaugă fructe proaspete - căpșuni suculente, afine zemoase, banane - și ai micul dejun de vis! Ușor de făcut chiar și pentru începători, dar rezultatul va fi ca la un brunch de 5 stele. Începe ziua cu zâmbetul pe buze!',
      imageUrl:
          'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=800',
      category: 'Breakfast',
      prepTime: 15,
      difficulty: 'Ușor',
      ingredients: [
        'Făină',
        'Ouă',
        'Lapte',
        'Zahăr',
        'Praf de copt',
        'Unt',
        'Sirop de arțar',
      ],
    ),
    FoodItem(
      name: 'Pad Thai 🍛',
      description:
          'Cel mai iubit și mai popular fel de mâncare thailandez, acum în bucătăria ta! Tăițeii de orez săltați la foc mare devin perfect caramelizați și aromați. Creveții suculenți, ouăle moi care se amestecă cu tăițeii, arahidele crocante care adaugă acea textură magică - fiecare element este esențial. Sosul de pește, tamarindul și lime-ul creează acel echilibru perfect dulce-acru-sărat, specific bucătăriei thailandeze. Fasole verde, ceapă verde, totul săltat rapid la flacără înaltă pentru acea aromă fumată caracteristică. În 25 de minute ai o rețetă care rivalizeaza cu orice restaurant thailandez! Merită absolut fiecare efort!',
      imageUrl:
          'https://images.unsplash.com/photo-1559314809-0d155014e29e?w=800',
      category: 'Thailandez',
      prepTime: 25,
      difficulty: 'Mediu',
      ingredients: [
        'Tăiței de orez',
        'Creveți',
        'Ouă',
        'Arahide',
        'Sos de pește',
        'Lime',
        'Fasole verde',
      ],
    ),
  ];
}
