<%@page import="com.logicacmg.koa.voorzitter.command.*,com.logicacmg.koa.constants.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<%
	CompareKieslijstFingerprints xCommand = (CompareKieslijstFingerprints) request.getAttribute(CommandConstants.COMMAND_IN_REQUEST_KEY);

	com.logicacmg.koa.dataobjects.KiesLijstFingerprintCompareResult xResult = xCommand.getCompareResult();
%>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Pragma" content="no-cache"/>
<META http-equiv="Expires" content="-1"/>
<TITLE>Kiezen op afstand - Voorzitter - Hoofdmenu</TITLE>
<LINK href="VoorzitterWeb.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
        <table width="725" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
            	<td colspan="3" background="images/banner_filler.gif"><div align="left">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="76" height="57">
							<div align="left"><IMG src="images/leeuw.gif" width="76" height="57" border="0"></div>
						</td>
						<td width="640" height="57">
							<div align="center"><font color="#FFFFFF" size="4" face="Arial, Helvetica, sans-serif">
								<strong>Verkiezing van de leden van het Europees Parlement 2004</strong></font>
							</div>
						</td>
					</tr>
					</table>
				</div></td>  
            </tr>
            <tr valign="top">
                <td width="3%" align="left" height="380"></td>
                <td width="94%" valign="top">
                <br>                
                <table width="100%">
                	<tr><td><strong>Resultaat vergelijking vingerafdrukken</strong></td></tr>
                	<tr><td>&nbsp;</td></tr>                	
                	<tr><td>Er is gecontroleerd of de gegevens van de kandidaten en 
                	bijbehorende kandidaatcodes op dit moment nog overeenstemmen 
                	met de ingelezen waarden.</td></tr>
                	<tr><td>Hieronder wordt het resultaat weergegeven per tabel:</td></tr>
                	<tr><td valign="top">
                		<ul>
                			<li>
                			<%
                				if (xResult.getKieslijstFPEqual())
                				{
							%>
							De gegevens van de politieke groeperingen zijn identiek aan de ingelezen waarden
         					<%       				
                				}
                				else
                				{
							%>
							<H3>Er zijn afwijkingen geconstateerd in de gegevens van de politieke groeperingen ten 
							opzichte van de ingelezen waarden.</H3>
         					<%       				
                				}
                				
                			%>
                			</li>
                			<li>
                			<%
                				if (xResult.getLijstpositiesFPEqual())
                				{
							%>
							De lijstposities zijn identiek aan de ingelezen waarden
         					<%       				
                				}
                				else
                				{
							%>
							<H3>Er zijn afwijkingen geconstateerd in de lijstposities ten 
							opzichte van de ingelezen waarden.</H3>
         					<%       				
                				}
                				
                			%>
                			</li>
                			<li>
                			<%
                				if (xResult.getKandidaatCodeFPEqual())
                				{
							%>
							De kandidaatcodes zijn identiek aan de gegenereerde waarden tijdens het inlezen
         					<%       				
                				}
                				else
                				{
							%>
							<H3>Er zijn afwijkingen geconstateerd in de kandidaatcodes ten 
							opzichte van de gegenereerde waarden.</H3>
         					<%       				
                				}
                				
                			%>
                			</li>
                		</ul>
                		</td>
                		</tr>
				</table>
				<br>
                <table width="100%">
                	<tr><td colspan="5"><strong>Vingerafdrukken</strong></td></tr>
                	<tr><td colspan="5">&nbsp;</td></tr>                	
                	<tr><td colspan="5">De volgende vingerafdrukken zijn gemaakt:</td></tr>
                	<tr><td colspan="5">&nbsp;</td></tr>
                	<tr>
                		<td valign="top" width="20%"><strong>Tabel</strong></td>
                		<td valign="top" width="5%"></td>
                		<td valign="top" width="35%"><strong>Waarde bij inlezen</strong></td>
						<td valign="top" width="5%"></td>
						<td valign="top" width="35%"><strong>Huidige waarde</strong></td>                		
                	</tr>
                	<tr>
                		<td valign="top" width="20%">Groeperingen</td>
                		<td valign="top" width="5%"></td>
                		<td valign="top" width="35%"><%= xResult.getKieslijstDatabaseFP() %></td>
						<td valign="top" width="5%"></td>
						<td valign="top" width="35%"><%= xResult.getKieslijstCurrentFP() %></td>                		
                	</tr>
                	<tr>
                		<td valign="top" width="20%">Lijstposities</td>
                		<td valign="top" width="5%"></td>
                		<td valign="top" width="35%"><%= xResult.getLijstpositiesDatabaseFP() %></td>
						<td valign="top" width="5%"></td>
						<td valign="top" width="35%"><%= xResult.getLijstpositiesCurrentFP() %></td>                		
                	</tr>
                	<tr>
                		<td valign="top" width="20%">Kandidaatcodes</td>
                		<td valign="top" width="5%"></td>
                		<td valign="top" width="35%"><%= xResult.getKandidaatcodesDatabaseFP() %></td>
						<td valign="top" width="5%"></td>
						<td valign="top" width="35%"><%= xResult.getKandidaatcodesCurrentFP() %></td>                		
                	</tr>
                	<tr><td colspan="5">&nbsp;</td></tr>
			        <tr>
			          <td colspan="5" align="left"><BUTTON STYLE="width:200" ONCLICK="window.location='Index'">Terug naar statusoverzicht</BUTTON>
			          </td>
			        </tr>
				</table>
				</td>
				<td width="3%" align="right" height="380"></td>
			</tr>
			<tr valign="top">
                <td colspan="3" height="10"><img src="images/horizontalline_2.gif" width="726" height="1"></td>
            </tr>
            <tr valign="top">
                <td colspan="3">
                <div align="center">
                <H2>De verantwoordelijkheid voor deze site berust bij het ministerie van Binnenlandse Zaken en Koninkrijksrelaties</H2>
                </div>
                </td>
            </tr>
		</table>

	<%@ include file="refreshFooter.jsp" %>
</BODY>
<HEAD>
<META http-equiv="Pragma" content="no-cache" />
<META http-equiv="Expires" content="-1" />
</HEAD>
</HTML>