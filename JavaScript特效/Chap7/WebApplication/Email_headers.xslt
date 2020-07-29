<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<BODY>
<TABLE cellspacing="3" cellpadding="8">
   <TR bgcolor="#AAAAAA">
      <TD class="heading"><B>日期</B></TD>
      <TD class="heading"><B>发件人</B></TD>
      <TD class="heading"><B>主题</B></TD>
   </TR>
   <xsl:for-each select="MESSAGES/MESSAGE">
   <TR bgcolor="#DDDDDD">
       <TD width="25%" valign="top">
         <xsl:value-of select="DATE"/>
       </TD>
      <TD width="20%" valign="top">
         <xsl:value-of select="FROM"/>
      </TD>
       <TD width="55%" valign="top">
         <B><xsl:value-of select="SUBJECT"/></B>
      </TD>
   </TR>
   </xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
