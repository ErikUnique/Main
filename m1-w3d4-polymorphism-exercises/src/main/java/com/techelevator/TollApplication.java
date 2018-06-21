package com.techelevator;

import java.util.ArrayList;
import java.util.List;

public class TollApplication {

	public static void main(String[] args) {
		
		Double sumMiles = 0.0;
		Double totalRevenue = 0.0;
		
		Vehicle car1 = new Car(true);     // We're going to act like its a "Vehicle" and interact with it like that, even though it's actually a car
		Vehicle car2 = new Car(false);    // We're going to act like its a "Vehicle" and interact with it like that, even though it's actually a car
		Vehicle truck1 = new Truck(6);    // We're going to act like its a "Vehicle" and interact with it like that, even though it's actually a truck
		Vehicle truck2 = new Truck(10);   // We're going to act like its a "Vehicle" and interact with it like that, even though it's actually a truck
		Vehicle tank1 = new Tank();       // We're going to act like its a "Vehicle" and interact with it like that, even though it's actually a truck
		
		List<Vehicle> vehicleList1 = new ArrayList<Vehicle>();
		
		vehicleList1.add(car1);           // Here I am adding all of the "Vehicles types" to the list vehicleList1
		vehicleList1.add(car2);
		vehicleList1.add(truck1);
		vehicleList1.add(truck2);
		vehicleList1.add(tank1);
				
		
		System.out.println("Vehicle \t Distance Travelled \t Toll $");
		System.out.println("------------------------------------------------------------");
		
	
		double randomDistance;
		
		for(Vehicle veh: vehicleList1) {
			
			randomDistance = Math.random() * 230.0 + 10;   // Calculate a random distance for the vehicle
			
			sumMiles += randomDistance;   //Add to the total distance travelled
			
			totalRevenue += veh.calculateToll(randomDistance) ;     //Add to the total revenue collected
			
			System.out.println(veh.getTypeOfVehicle() + "\t\t" + randomDistance + "\t" + veh.calculateToll(randomDistance));
			
		}
		
		System.out.println();
		System.out.println("The sum of all miles travelled is: " + "\t" + sumMiles);
		System.out.println("The total revenue collected is: " + "\t" + totalRevenue);
		
	}

}
