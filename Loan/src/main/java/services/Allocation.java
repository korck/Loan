package services;

import java.util.ArrayList;
import java.util.List;

import domain.Address;

public class Allocation {

	private List<Address> addresses = 
			new ArrayList<Address>();
	
	public void add(Address address){
		if(addresses.contains(address))
			return;
		addresses.add(address);	
	}
	
	public List<Address> getAll(){
		return addresses;
	}
}
