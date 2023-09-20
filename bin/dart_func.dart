
import 'dart:io';
void main() {
  print("Задание первое");
  print("Введите первое число:");
  int firstNum = int.parse(stdin.readLineSync()!);
  print("Введите второе число:");
  int secondNum = int.parse(stdin.readLineSync()!);
  print(divisibleOrNotDivisible(firstNum, secondNum));


  print("Задание второе");
  print("Введите строку:");
  String letter =stdin.readLineSync()!;
  print(getStringLength(letter));


  print("Задание третье");
  print("Введите что угодно , выведет тип данных того что ввели ");
  print(whatTypeIs("cnj"));


  print("Задание четвертое ");
  int number = int.parse(stdin.readLineSync()!); 
  if (isPrime(number)) {
    print('$number - простое число');
  } else {
    print('$number - не простое число');
  }



  print("Задание пятое");
  print("Введите число от 1 до 12 :");
  int numberForSeoson = int.parse(stdin.readLineSync()!);
  print(season(numberForSeoson));
}


String divisibleOrNotDivisible(int firstNum, int secondNum) {
  if (firstNum % secondNum == 0) {
    return "Делится нацело";
  } else {
    return "Не делится нацело";
  }
}
int getStringLength( String letter)
{
  return letter.length;
}


String whatTypeIs(dynamic num) {
  if (num.runtimeType== int) {
    return "Целое число";
  } else if (num.runtimeType== double) {
    return "Дробное число";
  } else if(num.runtimeType==String){
    return "Строка";
  }else {
    return "Неизвестный тип";
  }
}
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  if (number == 2) {
    return true;
  }
  if (number % 2 == 0) {
    return false;
  }
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

String season(int number) {
  if (number == 1 || number == 2 || number == 12) {
    return "Зима";
  } else if (number >= 3 && number <= 5) {
    return "Весна";
  } else if (number >= 6 && number <= 8) {
    return "Лето";
  } else if (number >= 9 && number <= 11) {
    return "Осень";
  } else {
    return "Недопустимый номер месяца";
  }
}