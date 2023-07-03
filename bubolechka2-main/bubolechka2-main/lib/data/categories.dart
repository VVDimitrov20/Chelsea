import 'package:bubolechka2/data/cards.dart';

import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
   ["1", "Chelsea", "Челси", "Chelsea",],
  ["2", "Havertz", "Хаверц", "Havertz"],
  ["3", "Felix", "Феликс", "Felix"],
  ["4", "Sterling", "Стърлинг", "Sterling"],
  ["5", "Mudryk", "Мудрик", "Mudryk"],
  ["6", "Madueke", "Мадуеке", "Madueke"],
  ["7", "Enzo Fernandez", "Ензо Фернандес", "Enzo Fernandez"],
  ["8", "Kovacic", "Ковачич", "Kovacic"],
  ["9", "Mount", "Маунт", "Mount"],
  ["10", "Kante", "Канте", "Kante"],
  ["11", "Chilwell", "Чилуел ", "Chilwell"],
  ["12", "James", "Джеймс", "James"],
  ["13", "Azpilicueta", "Аспиликуета", "Azpilicueta"],
  ["14", "Thiago Silva", "Тиаго Силва", "Thiago Silva"],
  ["15", "Fofana", "Фофана", "Fofana"],
  ["16", "Mendy", "Менди", "Mendy"],
  ["17", "Kepa", "Кепа", "Kepa"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
      },
      cards
          .where(
            (card) => card.categoryId == int.parse(categoryLabels[0]),
          )
          .toList());
}).toList();
