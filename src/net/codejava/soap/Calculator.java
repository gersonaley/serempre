/**
 * Calculator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package net.codejava.soap;

public interface Calculator extends javax.xml.rpc.Service {
    public java.lang.String getCalculatorSoapAddress();

    public net.codejava.soap.CalculatorSoap getCalculatorSoap() throws javax.xml.rpc.ServiceException;

    public net.codejava.soap.CalculatorSoap getCalculatorSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
