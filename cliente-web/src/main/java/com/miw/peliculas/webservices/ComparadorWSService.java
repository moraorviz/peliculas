
package com.miw.peliculas.webservices;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.3.0
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "ComparadorWSService", targetNamespace = "http://webservices.peliculas.miw.com/", wsdlLocation = "http://156.35.95.59:8080/comparador/soapws/comparador?wsdl")
public class ComparadorWSService
    extends Service
{

    private final static URL COMPARADORWSSERVICE_WSDL_LOCATION;
    private final static WebServiceException COMPARADORWSSERVICE_EXCEPTION;
    private final static QName COMPARADORWSSERVICE_QNAME = new QName("http://webservices.peliculas.miw.com/", "ComparadorWSService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/comparador/soapws/comparador?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        COMPARADORWSSERVICE_WSDL_LOCATION = url;
        COMPARADORWSSERVICE_EXCEPTION = e;
    }

    public ComparadorWSService() {
        super(__getWsdlLocation(), COMPARADORWSSERVICE_QNAME);
    }

    public ComparadorWSService(WebServiceFeature... features) {
        super(__getWsdlLocation(), COMPARADORWSSERVICE_QNAME, features);
    }

    public ComparadorWSService(URL wsdlLocation) {
        super(wsdlLocation, COMPARADORWSSERVICE_QNAME);
    }

    public ComparadorWSService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, COMPARADORWSSERVICE_QNAME, features);
    }

    public ComparadorWSService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public ComparadorWSService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns IComparadorWS
     */
    @WebEndpoint(name = "ComparadorWSPort")
    public IComparadorWS getComparadorWSPort() {
        return super.getPort(new QName("http://webservices.peliculas.miw.com/", "ComparadorWSPort"), IComparadorWS.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IComparadorWS
     */
    @WebEndpoint(name = "ComparadorWSPort")
    public IComparadorWS getComparadorWSPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://webservices.peliculas.miw.com/", "ComparadorWSPort"), IComparadorWS.class, features);
    }

    private static URL __getWsdlLocation() {
        if (COMPARADORWSSERVICE_EXCEPTION!= null) {
            throw COMPARADORWSSERVICE_EXCEPTION;
        }
        return COMPARADORWSSERVICE_WSDL_LOCATION;
    }

}
