<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/xklok/Filmova_databaze -->
<!-- Vybrání všech uživatelù, kteøí mají pøístupová práva vyšší nebo rovna jedné, a transformace do JSON -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="filmDatabaze_konfigurace/oddeleni_zanr/pristupova_prava/osoba[pravomoce >= 1]"> 
			<xsl:sort select="jmeno" order="descending"/>
			{
			"Jméno": "<xsl:value-of select="jmeno"/>",
			"Pøíjmení": "<xsl:value-of select="prijmeni"/>",
			"ID": "<xsl:value-of select="@id"/>",
			"Míra Oprávnìní": "<xsl:value-of select="pravomoce"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>