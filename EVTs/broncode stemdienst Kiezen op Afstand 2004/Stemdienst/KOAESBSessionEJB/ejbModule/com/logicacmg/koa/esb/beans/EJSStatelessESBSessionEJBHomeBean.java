package com.logicacmg.koa.esb.beans;
import com.ibm.ejs.container.*;
import com.ibm.ejs.persistence.*;
import com.ibm.ejs.EJSException;
import javax.ejb.*;
import java.rmi.RemoteException;
/**
 * EJSStatelessESBSessionEJBHomeBean
 * @generated
 */
public class EJSStatelessESBSessionEJBHomeBean extends EJSHome {
	/**
	 * EJSStatelessESBSessionEJBHomeBean
	 * @generated
	 */
	public EJSStatelessESBSessionEJBHomeBean() throws java.rmi.RemoteException {
		super();	}
	/**
	 * create
	 * @generated
	 */
	public com.logicacmg.koa.esb.beans.ESBSessionEJB create() throws javax.ejb.CreateException, java.rmi.RemoteException {
BeanO beanO = null;
com.logicacmg.koa.esb.beans.ESBSessionEJB _EJS_result = null;
boolean createFailed = false;
try {
	_EJS_result = (com.logicacmg.koa.esb.beans.ESBSessionEJB) super.createWrapper(new BeanId(this, null));
}
catch (javax.ejb.CreateException ex) {
	createFailed = true;
	throw ex;
} catch (java.rmi.RemoteException ex) {
	createFailed = true;
	throw ex;
} catch (Throwable ex) {
	createFailed = true;
	throw new CreateFailureException(ex);
} finally {
	if (createFailed) {
		super.createFailure(beanO);
	}
}
return _EJS_result;	}
}