<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
				
				<xsl:output method="html"/>
	
	<xsl:template match="headerWidget">
		
		<div id="logo-container">
			<xsl:element name="img">
				<xsl:attribute name="src">
					<xsl:value-of select="concat('http://localhost:8080', ./url)"/>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="./name"/>
				</xsl:attribute>
			</xsl:element>
			
		</div>
		
	</xsl:template>
				
</xsl:stylesheet>