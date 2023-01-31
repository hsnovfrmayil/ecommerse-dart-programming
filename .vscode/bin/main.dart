import 'dart:io';

main() {
  String userName = "HaSanov";
  String userPassword = "fhs101";
  int topPrice = 100;
  int formaPrice = 200;
  int elcekPrice = 300;
  int balance = 1000;
  int fullAmount = 0;
  double commission = 0;

  print("Satish merkezimize xosh geldiniz...");
  print("*****************************************************");
  stdout.write("Istifadeci adinizi daxil edin: ");
  String? yourName = stdin.readLineSync();
  stdout.write("Istifadeci parolunuzu daxil edin: ");
  String? yourPassword = stdin.readLineSync();

  print("*****************************************************");
  if (yourName == userName && yourPassword == userPassword) {
    print(
        "Elde olan mehsullarimiz:\n1.Top\n2.Idman Formalari\n3.Qapici elcekleri");
    stdout.write("Istediyiniz mehsulun nomresini daxil edin : ");
    int? chooseProduct = int.parse(stdin.readLineSync()!);
    stdout.write("Hemin mehsuldan necesin sifaris etmek isteyirsiniz : ");
    int? sayi = int.parse(stdin.readLineSync()!);

    switch (chooseProduct) {
      case 1:
        print("Umumi mebleg: ${topPrice * sayi}");
        fullAmount = topPrice * sayi;

        break;
      case 2:
        print("Umumi mebleg: ${formaPrice * sayi}");
        fullAmount = formaPrice * sayi;
        break;
      case 3:
        print("Umumi mebleg: ${elcekPrice * sayi}");
        fullAmount = elcekPrice * sayi;
        break;
      default:
        print("Mehsulu sehv secdiniz...");
        break;
    }
    print("*****************************************************");
    print("Banklar:\n1.Kapital Bank\n2.Pasha Bank\n3.Beynelxalq Bank");
    stdout.write("Banki secin : ");
    int? chooseBank = int.parse(stdin.readLineSync()!);
    print("*****************************************************");
    if (chooseBank == 1 || chooseBank == 2 || chooseBank == 3) {
      print(
          "Odenis usullari:\n1.Nagd odenish\n2.Kartla odenish\n3.Kredit vasitesile hisse-hisse odenish");
      stdout.write("Odenish usulun nomresini daxil edin : ");
      int? choosePayment = int.parse(stdin.readLineSync()!);
      switch (choosePayment) {
        case 1:
          print(
              "Nagd odenis etdiyiniz ucun butun kart hesabiniza ehtiyac olmadi...");

          break;
        case 2:
          print(
              "Siz kartla odenish etdiyiniz ucun butun mebleg tam olaraq kard hesabinizdan cixilacaqdir...");
          balance >= fullAmount
              ? print("Kartda qalan mebleg:  ${balance - fullAmount}")
              : print("Sizin balansinizda yeterli qeder mebleg yoxdur");

          break;
        case 3:
          print("*****************************************************");
          print(
              "Krediti nece odemek isteyirsiniz:\n1.3 ayliq\n2.6 ayliq\n3.12 ayliq");
          stdout.write("Kredit usulun nomresini daxil edin : ");
          int? chooseCardmethod = int.parse(stdin.readLineSync()!);
          switch (chooseCardmethod) {
            case 1:
              print(
                  "3 ayliq kreditle odenisde sizden hec bir komissiya tutulmayacaqdir...");
              balance >= fullAmount
                  ? print(
                      "3 ayliq odenishden sonra sizin Birbank hesabinizda qalacaq mebleg: ${balance - fullAmount}")
                  : print(
                      "Siz odenisi bitirmek ucun kartiniza elave etmeli oldugunuz mebleg:${fullAmount - balance}");

              break;
            case 2:
              print(
                  "6 ayliq kreditle odenisde sizden 10% komissiya tutulacaqdir...");
              commission = fullAmount * 0.1;
              print("Sizden tutulacaq komissiyanin meblegi: $commission");
              print("Umumi odeceyiniz mebleg: ${fullAmount + commission}");
              balance >= (fullAmount + commission)
                  ? print(
                      "6 ayliq odenishden sonra sizin Birbank hesabinizda qalacaq mebleg: ${balance - (fullAmount + commission)}")
                  : print(
                      "Siz odenisi bitirmek ucun kartiniza elave etmeli oldugunuz mebleg:${(fullAmount + commission) - balance}");

              break;
            case 3:
              print(
                  "12 ayliq kreditle odenisde sizden 20% komissiya tutulacaqdir...");
              commission = fullAmount * 0.2;
              print("Sizden tutulacaq komissiyanin meblegi: $commission");
              print("Umumi odeceyiniz mebleg: ${fullAmount + commission}");
              balance >= (fullAmount + commission)
                  ? print(
                      "12 ayliq odenishden sonra sizin Birbank hesabinizda qalacaq mebleg: ${balance - (fullAmount + commission)}")
                  : print(
                      "Siz odenisi bitirmek ucun kartiniza elave etmeli oldugunuz mebleg:${(fullAmount + commission) - balance}");

              break;
            default:
              print("Krediti odeme usulun sehv secdiniz...");
              break;
          }

          break;
        default:
          print("Odenish usulunu sehv secdiniz...");
          break;
      }
      print("*****************************************************");
      print("Bizden alish-verish etdiyiniz ucun tesekkurler...");
    } else {
      print("Banki yanlish daxil etdiniz...");
    }
  } else if (yourName == userName && yourPassword != userPassword) {
    print("Istifadeci Parolunuzu yanlish daxil etmisiniz...");
  } else if (yourName != userName && yourPassword == userPassword) {
    print("Istifadeci adinizi yanlish daxil etmisiniz...");
  } else {
    print("Istifadeci adinizi ve parolunuzu yanlish daxil etmisiniz... ");
  }
}
