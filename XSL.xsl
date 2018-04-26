<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="internetove_forum/prava_uzivatelu/pravo[mazani_prispevku = 1]"> 
			<xsl:sort select="uzivatel" order="ascending"/>
			{
			"typ profilu": "<xsl:value-of select="@uzivatel"/>",
			"Skupina oprávnění": "<xsl:value-of select="opravneni"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>