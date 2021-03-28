void main() {
  
  Car toyota = Car();
  toyota.drive();
  
  LevitatingCar hoverCraft = LevitatingCar();
  hoverCraft.drive();
  
  SelfDrivingCar sdc = SelfDrivingCar('32 Aim st.');
  sdc.drive();
  
  
  }

class Car {

  int numOfSeats = 5;
  
  void drive(){
   print('rotate wheels');
  }
}

class ElCar extends Car{

  void charge(){
    print('battery charging ...');
  }
  
}

class LevitatingCar extends Car{

 
  
  @override
  void drive(){

    print('hover forward');
  }
}

class SelfDrivingCar extends Car{

String destination;
  SelfDrivingCar(String userSetDestination){

    destination = userSetDestination;
  }
  @override
  void drive(){

    super.drive();
    print('Steering towards $destination');
  }
  
}
