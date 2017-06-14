<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<h2>My CD Collection</h2>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>
	
	<!-- <xsl:template match="mappedNavigationMenu">
   		<xsl:apply-templates select="mappedNavigationMenu"/>
	</xsl:template>
	
	<xsl:template match="mappedNavigationMenu">
   		<xsl:apply-templates select=""/>
	</xsl:template> -->
</xsl:stylesheet>