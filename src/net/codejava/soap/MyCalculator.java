package net.codejava.soap;

import java.rmi.RemoteException;

public class MyCalculator implements CalculatorSoap {

	@Override
	public int add(int intA, int intB) throws RemoteException {
		return intA + intB;
	}

	@Override
	public int subtract(int intA, int intB) throws RemoteException {
		return intA - intB;
	}

	@Override
	public int multiply(int intA, int intB) throws RemoteException {
		return intA * intB;
	}

	@Override
	public int divide(int intA, int intB) throws RemoteException {
		return intA / intB;
	}

}
