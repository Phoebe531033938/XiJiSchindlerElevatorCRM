<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>

<style>
  .show{display:block;}
  .hide{display:none;}
</style>

<logic:present name="contractInvoiceManageBean">
 <html:hidden property="isreturn"/>
<html:hidden property="id"/>
<html:hidden name="contractInvoiceManageBean" property="jnlNo"/>
<html:hidden name="contractInvoiceManageBean" property="billNo"/>

<table id="companyA" width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="15%">��ͬ�ţ�</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="contractNo"/></td>
		<td class="wordtd" width="15%">̨����</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="r9"/></td>
		<td class="wordtd" width="15%">��ͬ���ͣ�</td>
		<td width="20%">
			<logic:match name="contractInvoiceManageBean" property="contractType" value="B">����</logic:match>
			<logic:match name="contractInvoiceManageBean" property="contractType" value="W">ά��</logic:match>
			<logic:match name="contractInvoiceManageBean" property="contractType" value="G">����</logic:match>
		</td>
	</tr>
	<tr>
		<td class="wordtd" width="15%">�׷���λ���ƣ�</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="companyId"/></td>
		<td class="wordtd">�����ֲ���</td>
		<td><bean:write name="contractInvoiceManageBean" property="maintDivision"/></td>
		<td class="wordtd">����ά��վ��</td>
		<td><bean:write name="contractInvoiceManageBean" property="maintStation"/></td>
	</tr>
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd"  width="15%">��ͬ�ܶ</td>
		<td width="20%"><bean:write name="contractBean" property="contractTotal"/></td>
		<td class="wordtd" width="15%">�ѿ�Ʊ�ܶ</td>
		<td width="20%"><bean:write name="contractBean" property="invoiceTotal"/></td>
		<td class="wordtd" width="15%">δ��Ʊ�ܶ</td>
		<td width="20%"><bean:write name="contractBean" property="noInvoiceTotal"/></td>
	</tr>
	<tr>
		<td class="wordtd">Ӧ�տ���ˮ�ţ�</td>
		<td><html:text name="contractBean" property="ARF_JnlNo" readonly="true" styleClass="default_input_noborder" /></td>
		<td class="wordtd">Ӧ�տ����ƣ�</td>
		<td><bean:write name="contractBean" property="recName"/></td>
		<td class="wordtd">Ӧ�տ����ڣ�</td>
		<td><bean:write name="contractBean" property="preDate"/></td>
	</tr>
	<tr>
		<td class="wordtd">Ӧ�տ��</td>
		<td><bean:write name="contractBean" property="preMoney"/></td>
		<td class="wordtd">�ѿ�Ʊ��</td>
		<td><bean:write name="contractBean" property="bilMoney"/></td>
		<td class="wordtd">δ��Ʊ��</td>
		<td><bean:write name="contractBean" property="nobilMoney"/></td>
	</tr>
	<tr>
		<td class="wordtd">Ӧ�տע��</td>
		<td colspan="5"><bean:write name="contractBean" property="yskrem"/></td>
	</tr>
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="15%">��Ʊ�ţ�</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="invoiceNo"/></td>
		<td class="wordtd" width="15%">��Ʊ���ƣ�</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="invoiceName"/></td>
		<td class="wordtd" width="15%">ά�����䣺</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="maintScope"/></td>
	</tr>
	<tr>
		<td class="wordtd">��Ʊ���ͣ�</td>
		<td><bean:write name="contractInvoiceManageBean" property="invoiceType"/></td>
		<td class="wordtd">��Ʊ��</td>
		<td><bean:write name="contractInvoiceManageBean" property="invoiceMoney"/></td>
		<td class="wordtd">��Ʊ���ڣ�</td>
		<td><bean:write name="contractInvoiceManageBean" property="invoiceDate"/></td>
	</tr>
	<tr>
		<td class="wordtd">��ע��</td>
		<td colspan="5"><bean:write name="contractInvoiceManageBean" property="rem"/></td>
	</tr>
	
  <tr>
    <td height="23" colspan="6" align="center">&nbsp;<b>��Ʊ��Ϣ</td>
  </tr>
    <tr>
    <td class="wordtd"><bean:message key="customer.invoiceName"/>:</td>
    <td colspan="5"><bean:write name="CustomerBean" property="invoiceName"/></td> 
  </tr>
    <tr>
	    <td class="wordtd">��˰��ʶ���:</td>
	    <td colspan="5"><bean:write name="CustomerBean" property="taxId"/></td>    
  	</tr>
    <tr>
	    <td class="wordtd">��ַ���绰:</td>
	    <td colspan="5"><bean:write name="CustomerBean" property="accountHolder"/></td> 
    </tr> 
  <tr>
	    <td class="wordtd"><bean:message key="customer.bank"/>:</td>
	    <td colspan="5"><bean:write name="CustomerBean" property="bank"/></td>
  </tr>
  <tr>  
	    <td class="wordtd"><bean:message key="customer.account"/>:</td>
	    <td colspan="5"><bean:write name="CustomerBean" property="account"/></td>
    </tr> 
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="15%">¼���ˣ�</td>
		<td width="20%"><bean:write name="contractInvoiceManageBean" property="operId"/></td>
		<td class="wordtd" width="15%">¼�����ڣ�</td>
		<td><bean:write name="contractInvoiceManageBean" property="operDate"/></td>
	</tr>
</table>
<br/>
    <div style="width: 100%;padding-top: 4;padding-bottom: 4;border-bottom: 0" class="tb">        
   		<b>&nbsp;��Ʊȷ��</b>
  	</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    	<tr>
    		<td class="wordtd" width="15%">ȷ���ˣ�</td>
    		<td width="20%"><bean:write name="contractInvoiceManageBean" property="auditOperid"/></td>
    		<td class="wordtd" width="15%">ȷ�����ڣ�</td>
    		<td><bean:write name="contractInvoiceManageBean" property="auditDate"/></td>
    	</tr>
    	<tr>
    		<td class="wordtd">ȷ�������</td>
    		<td colspan="3"><bean:write name="contractInvoiceManageBean" property="auditRem"/></td>
    	</tr>
    </table>
    <br/>

    <div style="width: 100%;padding-top: 4;padding-bottom: 4;border-bottom: 0" class="tb">        
   		<b>&nbsp;�ܲ������</b>
  	</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    	<tr>
    		<td class="wordtd" width="15%">����ˣ�</td>
    		<td width="20%"><bean:write name="contractInvoiceManageBean" property="auditOperid2"/></td>
    		<td class="wordtd" width="15%">������ڣ�</td>
    		<td><bean:write name="contractInvoiceManageBean" property="auditDate2"/></td>
    	</tr>
    	<tr>
    		<td class="wordtd">��������</td>
    		<td colspan="3"><bean:write name="contractInvoiceManageBean" property="auditRem2"/></td>
    	</tr>
    </table>
    <br/>

    <div style="width: 100%;padding-top: 4;padding-bottom: 4;border-bottom: 0" class="tb">        
   		<b>&nbsp;�����ܼ����</b>
  	</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    	<tr>
    		<td class="wordtd" width="15%">����ˣ�</td>
    		<td width="20%"><bean:write name="contractInvoiceManageBean" property="auditOperid4"/></td>
    		<td class="wordtd" width="15%">������ڣ�</td>
    		<td><bean:write name="contractInvoiceManageBean" property="auditDate4"/></td>
    	</tr>
    	<tr>
    		<td class="wordtd">��������</td>
    		<td colspan="3"><bean:write name="contractInvoiceManageBean" property="auditRem4"/></td>
    	</tr>
    </table>
    <br/>

    <div style="width: 100%;padding-top: 4;padding-bottom: 4;border-bottom: 0" class="tb">        
   		<b>&nbsp;�������</b>
  	</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    	<tr>
    		<td class="wordtd" width="15%">����ˣ�</td>
    		<td width="20%"><bean:write name="contractInvoiceManageBean" property="auditOperid3"/></td>
    		<td class="wordtd" width="15%">������ڣ�</td>
    		<td><bean:write name="contractInvoiceManageBean" property="auditDate3"/></td>
    	</tr>
    	<tr>
    		<td class="wordtd">��������</td>
    		<td colspan="3"><bean:write name="contractInvoiceManageBean" property="auditRem3"/></td>
    	</tr>
    </table>

  <script type="text/javascript"> 
	
  </script> 
</logic:present>