<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<BODY>
<FONT face="Verdana" size="2">
<TABLE cellspacing="10" cellpadding="4">
   <xsl:for-each select="MESSAGES/MESSAGE">
   <TR bgcolor="#CCCCCC">
   <TD class="info">
         日期: <B><xsl:value-of select="DATE"/></B><BR></BR>
         收件人: <B><xsl:value-of select="TO"/></B><BR></BR>
         发件人: <B><xsl:value-of select="FROM"/></B><BR></BR>
         主题: <B><xsl:value-of select="SUBJECT"/></B><BR></BR>
         <BR></BR>
         <xsl:value-of select="BODY"/>
       </TD>
   </TR>
   </xsl:for-each>
</TABLE>
</FONT>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
