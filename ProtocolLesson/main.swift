//
//  main.swift
//  ProtocolLesson
//
//  Created by Арген on 19.03.2021.
//

import Foundation

protocol CarProtocol {
    
    var speed: Double { get set }
    
    func move ()
}

extension CarProtocol {
    
    func move() {
        print("Я еду со скоростью \(speed)")
    }
}


protocol DoorStateProtocol {
    
    var doorState: String { get set }
    
    func door()
}

extension DoorStateProtocol {
    
    func door() {
        print("Дверь \(doorState)")
        
    }
}


protocol EngineState: class {
    
    var enginState: String { get set }
    
    func start ()
}

extension EngineState {
    
    func start() {
        print("Двигатель \(enginState)")
    }
}

class SporCar: CarProtocol, DoorStateProtocol, EngineState {
    
    let year: Int
    let km: Double
    
    var speed: Double = 260
    
    var doorState: String = "закрыто"
    
    var enginState: String = "запущен"
    
    init(year: Int, km: Double) {
        self.year = year
        self.km = km
    }
    
    func infoCar(car: SporCar) {
        print("Год: \(year)")
        print("Км: \(km)")
    }
    
}

let sportCar = SporCar(year: 2020, km: 234)

sportCar.infoCar(car: sportCar)
sportCar.start()
sportCar.move()
sportCar.door()
  
extension SporCar: CustomStringConvertible {
    var description: String {
        return "Вид SportCar"
    }
}

print(sportCar.description)

print("-------------------------------")

class TrackCar: CarProtocol, DoorStateProtocol, EngineState {
    
    let markTrack: String
    let seats: Int
    var luggage: String
    
    var speed: Double = 180
    
    var doorState: String = "открыто"
    
    var enginState: String = "запущен"
    
    init(markTrack: String, seats: Int, luggage: String) {
        self.markTrack = markTrack
        self.seats = seats
        self.luggage = luggage
    }
    
    func infoTrack() {
        print("\(markTrack)")
        print("\(seats) местный")
        print("Багаж \(luggage)")
    }
    
}

let trackCar = TrackCar(markTrack: "Volvo", seats: 4, luggage: "пустой")
trackCar.infoTrack()
trackCar.door()
trackCar.start()
trackCar.move()

extension TrackCar: CustomStringConvertible {
    var description: String {
        return "Вид грузовой автомобиль"
    }
}
print(trackCar.description)


