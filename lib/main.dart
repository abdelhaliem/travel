import 'dart:io';

void main () {
  try{
    bool z = true;
  travelAgensy trav = new travelAgensy();
    while (z) {
      print('_-_-_-_-_-_-_-_-_-');
      print('_- 1- Add trip  _-');
      print('_- 2-View Trips _-');
      print('_- 3-Delete     _-');
      print('_- 4-Edit Trip  _-');
      print('_- 5-Reverse    _-');
      print('_- 6-discount   _-');
      print('_- 7-Search     _-');
      print('_- 8-Exit       _-');
      print('_-_-_-_-_-_-_-_-_-');
      print('');
      print('enter number');
  var cont =  stdin .readLineSync();
  var nameBy;
  switch(cont){
    case '1' :
      trav.addTrip();
      print('Added successfully');
      break;
    case '2':
      trav.theView();
      break;
    case '3':
      trav.delete();
      print('Deleted');
      break;
    case '4':
      trav.editTrip();
      print('Modified');
      break;
    case '5':
      trav.theView();
      print('Please Enter Id Trip');
      var number = stdin.readLineSync();
      switch(number){
        case'1':
          print('Please enter the name of the header');
           nameBy = stdin.readLineSync();
          trav.id1();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'2':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id2();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'3':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id3();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'4':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          print ('The Flight Was Booked as : (${nameBy})');
          trav.id4();
          break;
        case'5':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          print ('The Flight Was Booked as : (${nameBy})');
          trav.id5();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'6':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id6();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'7':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          print ('The Flight Was Booked as : (${nameBy})');
          trav.id7();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'8':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id8();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'9':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id9();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
        case'10':
          print('Please enter the name of the header');
          nameBy = stdin.readLineSync();
          trav.id10();
          print ('The Flight Was Booked as : (${nameBy})');
          break;
      }
      break;
    case '6':
    trav.CheckDiscount();
      break;
    case '7':
      print('Please Enter Id Trip');
      var Search = stdin.readLineSync();
      switch(Search){
        case'1':
          trav.id1();
          break;
        case'2':
          trav.id2();
          break;
        case'3':
          trav.id3();
          break;
        case'4':
          trav.id4();
          break;
        case'5':
          trav.id5();
          break;
        case'6':
          trav.id6();
          break;
        case'7':
          trav.id7();
          break;
        case'8':
          trav.id8();
          break;
        case'9':
          trav.id8();
          break;
        case'10':
          trav.id10();
          break;
          print('not fund');
      }
      break;
    case '8':
      z = false;
      break;
  }}
}catch(e){
    main();
  }
}
class travelAgensy{
  var id;
  String location ;
  var passgLimit ;
  var day;
  var month;
  var year;
  String data ;
  var prise ;
  var nameBy;
  var checkDiscount;

  travelAgensy (){
    this.id = 0 ;
    this.location = null ;
    this.passgLimit = 0 ;
    this.data = null ;
    this.data = '2021' ;
    this.month = '1' ;
    this.year = '1' ;
    this.prise = 0 ;
    this.nameBy='';
    if(prise>10000){
      prise-20*100;
    }
   }
  String get TravelNumber{
    return id;
  }
  void set TravelNumber(var i){
    this .id = i;
  }
  String get TravelLocation{
    return location;
  }
  void set TravelLocation(String loc){
    this.location = loc;
  }
  int get TravelLimitPassenger{
    return passgLimit;
  }
  void set TravelLimitPassenger(int j){
    this.passgLimit = j;
  }
  String get TraveData{
    return data;
  }
  void set TravelData(String dat){
  this.data= dat;
  }
  int get TravelPrice{
    return prise;
  }
  void set TravelPrice(int p){
    this.prise = p;
  }
  int get TravelDay{
    return day;

  }
  void set TravelDay(int d){
    this.day = d;
  }
  int get TravelMonth{
    return month;
  }
  void set TravelMonth(int m){
    this.month = m;
  }
  int get TravelYear{
    return year;
  }
  void set TravelYear(int y){
    this.year = y;
  }
  String get NameBy{
    return nameBy;
  }
  void set NameBy(String n){
    this.nameBy = n;
  }

  void addTrip(){
    print('Please Enter id');
    id = stdin.readLineSync();
    print('Please Enter Location');
    location = stdin.readLineSync();
    print('Data In:');
    print('Please Enter day');
    day = stdin.readLineSync();
    print('Please Enter Month');
    month = stdin.readLineSync();
    print('Please Enter year');
    year = stdin.readLineSync();
    print('Please Enter LimitPassenger');
    passgLimit = stdin.readLineSync();
    print('Please Enter Prise');
    prise = stdin.readLineSync();
    print('The Id Travel Is : ${id}');
    print('The Travel Location  Is : ${location}');
    print('The Travel Pessengers Limit  Is : ${passgLimit}');
    print('The Travel Data Is : ${year}/${month}/${day}');

    (print ('The Travel Prise Is : ${prise}'));
  }
  void  theView (){
    // travel 1
    print('• Trip (1)');
    print('');
    print ('The Id Travel Is : ${id = 1}');
    print ('The Travel Location  Is : ${location = 'England'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/1/3'}');
    print ('The Travel Prise Is : ${prise= 1000 }');
    print('---------------------------------');

    // travel 2
    print('• Trip Number (2)');
    print('');
    print ('The Id Travel Is : ${id = 2}');
    print ('The Travel Location  Is : ${location = 'Egypt'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 8}');
    print ('The Travel Data Is : ${data ='2021/12/3'}');
    print ('The Travel Prise Is : ${prise= 11000 }');
    print('---------------------------------');
    // travel 3
    print('• Trip Number (3)');
    print('');
    print ('The Id Travel Is : ${id = 3}');
    print ('The Travel Location  Is : ${location = 'Roma'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 5}');
    print ('The Travel Data Is : ${data ='2021/8/6'}');
    print ('The Travel Prise Is : ${prise= 13000 }');
    print('---------------------------------');
    // travel 4
    print('• Trip Number (4)');
    print('');
    print ('The Id Travel Is : ${id = 4}');
    print ('The Travel Location  Is : ${location = 'Giza Pyramids'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/2/15'}');
    print ('The Travel Prise Is : ${prise= 900 }');
    print('---------------------------------');
    // travel 5
    print('• Trip Number (5)');
    print('');
    print ('The Id Travel Is : ${id = 5}');
    print ('The Travel Location  Is : ${location = 'Paris'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/5/3'}');
    print ('The Travel Prise Is : ${prise= 17000 }');
    print('---------------------------------');
    // travel 6
    print('• Trip Number (6)');
    print('');
    print ('The Id Travel Is : ${id = 6}');
    print ('The Travel Location  Is : ${location = 'Aswan'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 3}');
    print ('The Travel Data Is : ${data ='2021/7/1'}');
    print ('The Travel Prise Is : ${prise= 800 }');
    print('---------------------------------');
    // travel 7
    print('• Trip Number (7)');
    print('');
    print ('The Id Travel Is : ${id = 7}');
    print ('The Travel Location  Is : ${location = 'Italian'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 8}');
    print ('The Travel Data Is : ${data ='2021/12/9'}');
    print ('The Travel Prise Is : ${prise= 10000 }');
    print('---------------------------------');
    // travel 8
    print('• Trip Number (8)');
    print('');
    print ('The Id Travel Is : ${id = 8}');
    print ('The Travel Location  Is : ${location = '☺ The Maldive Islands'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/6/3'}');
    print ('The Travel Prise Is : ${prise= 23000 }');
    print('---------------------------------');
    // travel 9
    print('• Trip Number (9)');
    print('');
    print ('The Id Travel Is : ${id = 9}');
    print ('The Travel Location  Is : ${location = '☺ The Maldive Islands'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/2/1'}');
    print ('The Travel Prise Is : ${prise= 23000 }');
    print('---------------------------------');
    // travel 10
    print('• Trip Number (10)');
    print('');
    print ('The Id Travel Is : ${id = 10}');
    print ('The Travel Location  Is : ${location = 'Spain'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 6}');
    print ('The Travel Data Is : ${data ='2021/11/15'}');
    print ('The Travel Prise Is : ${prise= 13000 }');
    print('');
  }
  void delete (){
    this.id = 0 ;
    this.location = null ;
    this.passgLimit = 0 ;
    this.data = null ;
    this.prise = 0 ;
    }
  void editTrip(){
    print('Do you want to Edit ID:? yes/no');
    var choise = stdin.readLineSync();
    if (choise =="yes"){
      print('Enter New ID:');
      id = stdin.readLineSync();
    }

    print('Do you want to Edit Location:? yes/no');

    var choise2 = stdin.readLineSync();
    if (choise2 =="yes"){
      print('Enter New Location:');
      location = stdin.readLineSync();
    }
    print('Do you want to Edit passgLimit:? yes/no');

    var choise3 = stdin.readLineSync();
    if (choise3 =='yes'){
      print("Enter New PassgLimit:");
      passgLimit = stdin.readLineSync();
    }
    print('Do you want to Edit data:? yes/no');
    var Data = stdin.readLineSync();
    if (Data =='yes'){
      print('Do you want to Edit Day:? yes/no');
      var Day = stdin.readLineSync();
      if ( Day=='yes'){
        print('Enter New Day:');
        day = stdin.readLineSync();
      }
      print('Do you want to Edit Month:? yes/no');
      var mmonth = stdin.readLineSync();
      if ( mmonth=='yes'){
        print('Enter New Month:');
        month = stdin.readLineSync();
      }
      print('Do you want to Edit Year:? yes/no');
      var yyear = stdin.readLineSync();
      if ( yyear=='yes'){
        print('Enter New Year:');
        year = stdin.readLineSync();
      }
    }

    print('Do you want to Edit Price:? yes/no');
    var choise5 = stdin.readLineSync();
    if (choise5 =='yes'){
      print('Enter New Price:');
      prise = stdin.readLineSync();
    }
    print('The Id Travel Is : ${id}');
    print('The Travel Location  Is : ${location}');
    print('The Travel Pessengers Limit  Is : ${passgLimit}');
    print('The Travel Data Is : ${year}/${month}/${day}');
    print('The Travel Prise Is : ${prise}');
  }
  void CheckDiscount(){
    print('You have discount  20% of Travel Please Enter prise Trip');
    int p = int.parse(stdin.readLineSync());
    if (p >= 10000){
      p  = p - 20*100;
      print ('You got 20% off your Trip: ${p}');
    }
    else{
      print ('You have not discount  !!!! : ${p}');
  }
  }
  void id1 (){
    print ('The Id Travel Is : ${id = 1}');
    print ('The Travel Location  Is : ${location = 'England'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/1/3'}');
    print ('The Travel Prise Is : ${prise= 1000 }');
  }
  void id2(){
    print ('The Id Travel Is : ${id = 2}');
    print ('The Travel Location  Is : ${location = 'Egypt'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 8}');
    print ('The Travel Data Is : ${data ='2021/12/3'}');
    print ('The Travel Prise Is : ${prise= 11000 }');
    print('');
    print ('Reservation was successful');
  }
  void id3 (){
    print ('The Id Travel Is : ${id = 3}');
    print ('The Travel Location  Is : ${location = 'Roma'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 5}');
    print ('The Travel Data Is : ${data ='2021/8/6'}');
    print ('The Travel Prise Is : ${prise= 13000 }');
    print('');
    print ('Reservation was successful');
  }
  void id4(){
    print ('The Id Travel Is : ${id = 4}');
    print ('The Travel Location  Is : ${location = 'Giza Pyramids'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/2/15'}');
    print ('The Travel Prise Is : ${prise= 900 }');
    print('');
    print ('Reservation was successful');
  }
  void id5 (){
    print ('The Id Travel Is : ${id = 5}');
    print ('The Travel Location  Is : ${location = 'Paris'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/5/3'}');
    print ('The Travel Prise Is : ${prise= 17000 }');
    print('');
    print ('Reservation was successful');
  }
  void id6 (){
    print ('The Id Travel Is : ${id = 6}');
    print ('The Travel Location  Is : ${location = 'Aswan'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 3}');
    print ('The Travel Data Is : ${data ='2021/7/1'}');
    print ('The Travel Prise Is : ${prise= 800 }');
    print('');
    print ('Reservation was successful');
  }
  void id7 (){
    print ('The Id Travel Is : ${id = 7}');
    print ('The Travel Location  Is : ${location = 'Italian'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 8}');
    print ('The Travel Data Is : ${data ='2021/12/9'}');
    print ('The Travel Prise Is : ${prise= 10000 }');
    print('');
    print ('Reservation was successful');
  }
  void id8 (){
    print ('The Id Travel Is : ${id = 8}');
    print ('The Travel Location  Is : ${location = '☺ The Maldive Islands'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/6/3'}');
    print ('The Travel Prise Is : ${prise= 23000 }');
    print('');
    print ('Reservation was successful');
  }
  void id9 (){
    print ('The Id Travel Is : ${id = 9}');
    print ('The Travel Location  Is : ${location = '☺ The Maldive Islands'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 10}');
    print ('The Travel Data Is : ${data ='2021/2/1'}');
    print ('The Travel Prise Is : ${prise= 23000 }');
    print('');
    print ('Reservation was successful');
  }
  void id10 (){
    print ('The Id Travel Is : ${id = 10}');
    print ('The Travel Location  Is : ${location = 'Spain'}');
    print ('The Travel Pessengers Limit  Is : ${passgLimit = 6}');
    print ('The Travel Data Is : ${data ='2021/11/15'}');
    print ('The Travel Prise Is : ${prise= 13000 }');
    print('');
    print ('Reservation was successful');
  }

}

