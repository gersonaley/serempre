package net.codejava.soap;

public class CalculatorSoapProxy implements net.codejava.soap.CalculatorSoap {
  private String _endpoint = null;
  private net.codejava.soap.CalculatorSoap calculatorSoap = null;
  
  public CalculatorSoapProxy() {
    _initCalculatorSoapProxy();
  }
  
  public CalculatorSoapProxy(String endpoint) {
    _endpoint = endpoint;
    _initCalculatorSoapProxy();
  }
  
  private void _initCalculatorSoapProxy() {
    try {
      calculatorSoap = (new net.codejava.soap.CalculatorLocator()).getCalculatorSoap();
      if (calculatorSoap != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)calculatorSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)calculatorSoap)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (calculatorSoap != null)
      ((javax.xml.rpc.Stub)calculatorSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public net.codejava.soap.CalculatorSoap getCalculatorSoap() {
    if (calculatorSoap == null)
      _initCalculatorSoapProxy();
    return calculatorSoap;
  }
  
  public int add(int intA, int intB) throws java.rmi.RemoteException{
    if (calculatorSoap == null)
      _initCalculatorSoapProxy();
    return calculatorSoap.add(intA, intB);
  }
  
  public int subtract(int intA, int intB) throws java.rmi.RemoteException{
    if (calculatorSoap == null)
      _initCalculatorSoapProxy();
    return calculatorSoap.subtract(intA, intB);
  }
  
  public int multiply(int intA, int intB) throws java.rmi.RemoteException{
    if (calculatorSoap == null)
      _initCalculatorSoapProxy();
    return calculatorSoap.multiply(intA, intB);
  }
  
  public int divide(int intA, int intB) throws java.rmi.RemoteException{
    if (calculatorSoap == null)
      _initCalculatorSoapProxy();
    return calculatorSoap.divide(intA, intB);
  }
  
  
}