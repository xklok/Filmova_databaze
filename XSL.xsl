<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/xklok/Filmova_databaze -->
<!-- Vybr�n� v�ech u�ivatel�, kte�� maj� p��stupov� pr�va vy��� nebo rovna jedn�, a transformace do JSON -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="filmDatabaze_konfigurace/oddeleni_zanr/pristupova_prava/osoba[pravomoce >= 1]"> 
			<xsl:sort select="jmeno" order="descending"/>
			{
			"Jm�no": "<xsl:value-of select="jmeno"/>",
			"P��jmen�": "<xsl:value-of select="prijmeni"/>",
			"ID": "<xsl:value-of select="@id"/>",
			"M�ra Opr�vn�n�": "<xsl:value-of select="pravomoce"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>