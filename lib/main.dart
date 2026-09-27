// ЛР 1 — шесть независимых виджетов.
//
// Как сдавать: скопируйте этот файл целиком себе в main.dart, допишите
// шесть функций ниже вместо TODO, запустите — все шесть элементов должны
// появиться на экране. Пришлите готовый файл на проверку.
//
// Основной виджет трогать не нужно. Редактируйте там, где написано TODO.

import 'package:flutter/material.dart';

void main() {
  runApp(const Lab1App());
}

class Lab1App extends StatelessWidget {
  const Lab1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ЛР 1')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task 1:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task1(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 2:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task2(),

              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 3:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task3(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 4:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task4(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 5:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task5(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 6:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task6(),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. Заголовок — Text, крупный жирный текст чёрного цвета, обрезается в одну строку, если не помещается.
Widget task1() {
  // TODO: замените Placeholder на Text()
  return Text('Приветикииииииииииииииииииииииииииииииииииииии', maxLines: 1,
    style: TextStyle(
    color: const Color.fromARGB(255, 0, 0, 0), 
    fontSize: 52,
    fontWeight: FontWeight.bold,
    ),
  );
}

// 2. Подпись — небольшой, нежирный курсивный текст белого цвета, обрезается в две строки.
// Также реализуйте подложку из тёмно-серого контейнера с закруглениями, чтобы текст было видно
Widget task2() {
  // TODO: замените Placeholder на ...
  return Container ( 
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 65, 65, 65), 
      borderRadius: BorderRadius.circular(10)
    ),
    child: Text('лалалалалалалалалаллалалалалалаллалалаллалалалаллалаллалалалалалалалаллалалалалалалалалаллалалалалаллалалалааллалалалалаллала', maxLines: 2,
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontStyle: FontStyle.italic
      )
  )
);
}

// 3. Иконка — любая Icon на ваш вкус,
// с применением цвета и размером.
Widget task3() {
  // TODO: замените Placeholder на...
  return Icon(Icons.follow_the_signs_rounded,
  color: const Color.fromARGB(255, 255, 147, 214),
  size: 50,
  );
}

// 4. Кнопка с иконкой избранного — большая иконка сердца красного цвета без фона.
// При нажатии пишет в консоль "Вы добавили в избранное"
Widget task4() {
  // TODO: замените Placeholder на ...
  return ElevatedButton.icon(onPressed: () {print('Вы добавили в избранное');}, 
  label: Icon(Icons.favorite, color: Colors.red, size: 50), style: ElevatedButton.styleFrom(elevation: 0), );
}

// 5. Кнопка «Подробнее» — кнопка с текстом и обводкой, при нажатии пишет в консоль "Узнать детали"
Widget task5() {
  // TODO: замените Placeholder на ...
  return ElevatedButton(onPressed: () {print('Узнать детали');}, 
    child: Text('Подробнее'),
    style: ElevatedButton.styleFrom (side: BorderSide(width: 7.0, color: Colors.red)),
    );
}

// 6. Изображение в стиле Polaroid—  выберите любое из каталога по ссылке
// https://picsum.photos/ (необходим vpn), либо используйте https://docs.flutter.dev/assets/images/dash/dash-fainting.gif
// Добавьте чёрную обводку, а внутри белую рамку в стиле фотографии Polaroid (https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAeKRHzUEOMCX836O6p8R5-XBkrSlf8C4go4C7f1q8ClnmlFaV9emSrUFL&s=10)
// Для реализации используйте Container
Widget task6() {
  // TODO: замените Placeholder на Container()
  return Container(
    width: 210,
    height: 250,
    padding: EdgeInsets.fromLTRB(15, 15, 15, 55),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 255, 255), 
      border: Border.all(width: 1, color: const Color.fromARGB(255, 0, 0, 0)
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
      border: Border.all(width: 1, color: const Color.fromARGB(255, 0, 0, 0))
    ),
    child: Image.network('https://sun9-25.userapi.com/impg/_TTXelnOxD_AtI5O7H1HXRH_MBFQ0o7kMBfhDA/9KUwwL5fJEY.jpg?size=603x452&quality=95&sign=dd3ed55c10cac25810185a7114717c67&type=album',fit: BoxFit.cover),
    )
  );
}
