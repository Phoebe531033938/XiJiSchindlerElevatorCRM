<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>

<style>
  .show{display:block;}
  .hide{display:none;}
</style>

<logic:present name="invoiceManageBean">
 <html:hidden property="isreturn"/>
<html:hidden property="id"/>
<html:hidden property="auditStatus"/>
<html:hidden name="invoiceManageBean" property="jnlNo"/>
<html:hidden name="invoiceManageBean" property="billNo"/>

<table id="companyA" width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="20%">委托合同号：</td>
		<td width="15%">
		<a onclick="simpleOpenWindow('returningMaintainDetailAction','${invoiceManageBean.entrustContractNo}');" class="link">${invoiceManageBean.entrustContractNo}</a>
		</td>
		<td class="wordtd" width="15%">委托单位名称：</td>
		<td width="20%"><bean:write name="invoiceManageBean" property="companyId"/></td>
		<td class="wordtd" width="15%">所属分部：</td>
		<td width="10%"><bean:write name="invoiceManageBean" property="maintDivision"/></td>
	</tr>
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd"  width="20%">合同总额：</td>
		<td width="15%"><bean:write name="contractTotal"/></td>
		<td class="wordtd" width="15%">已收发票金额：</td>
		<td width="20%"><bean:write name="builtReceivables"/></td>
		<td class="wordtd" width="15%">未收发票金额：</td>
		<td width="10%"><bean:write name="noBuiltReceivables"/></td>
	</tr>
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
	<td class="wordtd" width="20%">发票号：</td>
		<td colspan="5"><bean:write name="invoiceManageBean" property="invoiceNo"/></td>
	</tr>
	<tr>
		<td class="wordtd" width="20%">发票类型：</td>
		<td width="15%"><bean:write name="invoiceManageBean" property="invoiceType"/></td>
		<td class="wordtd" width="15%">发票金额：</td>
		<td width="20%"><bean:write name="invoiceManageBean" property="invoiceMoney"/></td>
		<td class="wordtd" width="15%">发票日期：</td>
		<td width="10%"><bean:write name="invoiceManageBean" property="invoiceDate"/></td>
	</tr>
	<tr>
		<td class="wordtd">备注：</td>
		<td colspan="5"><bean:write name="invoiceManageBean" property="rem" /></td>
	</tr>
</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="20%">录入人：</td>
		<td width="30%"><bean:write name="invoiceManageBean" property="operId"/></td>
		<td class="wordtd" width="20%">录入日期：</td>
		<td width="30%"><bean:write name="invoiceManageBean" property="operDate"/></td>
	</tr>
</table>
<br/>
<div style="width: 100%;padding-top: 4;padding-bottom: 4;border-bottom: 0" class="tb">        
   		<b>&nbsp;应收款审核</b>
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
	<tr>
		<td class="wordtd" width="20%">审核人：</td>
		<td width="30%"><bean:write name="invoiceManageBean" property="auditOperid"/></td>
		<td class="wordtd" width="20%">审核日期：</td>
		<td width="30%"><bean:write name="invoiceManageBean" property="auditDate"/></td>
	</tr>
	<tr>
		<td class="wordtd">审核意见：</td>
		<td colspan="3"><bean:write name="invoiceManageBean" property="auditRem"/></td>
	</tr>
</table>

  <script type="text/javascript"> 
	
  </script> 
</logic:present>