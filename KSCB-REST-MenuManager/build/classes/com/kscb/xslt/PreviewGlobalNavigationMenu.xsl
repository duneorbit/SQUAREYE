<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:java="http://xml.apache.org/xalan/java">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<div id='jqxWidget' style='height: 300px;'>
					<div id='jqxMenu' style='visibility: hidden; margin-left: 5px;'>
						<ul>
							<xsl:apply-templates/>
						</ul>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="mappedNavigationMenu">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="mappedNavigationMenuItem">
		<li>
			<xsl:value-of select="java:org.kscb.utilities.StringUtils.camelCase(./menuItemTitle)"/>
			<xsl:if test="./menuItemChildren/menuItemChildren">
				<ul style='width: 250px;'>
					<xsl:for-each select="./menuItemChildren/menuItemChildren">
			        	<li>
			        		<xsl:element name="a">
			        			<xsl:attribute name="href">
			        				<xsl:text>#</xsl:text>
			        			</xsl:attribute>
			        			<xsl:value-of select="java:org.kscb.utilities.StringUtils.camelCase(./menuItemTitle)"/>
			        		</xsl:element>
						</li>
			    	</xsl:for-each>
			    </ul>
		    </xsl:if>
		</li>
	</xsl:template>
	
	<xsl:template name="camelCase">
		<xsl:param name="text"/>
		<xsl:variable name="nbsp"><xsl:text><![CDATA[&nbsp;]]></xsl:text></xsl:variable>
	    <xsl:variable name="checkNBSP" select="translate($text, $nbsp, ' ')"/>
	    <xsl:variable name="check160" select="translate($checkNBSP, '&#160;', ' ')"/>
	
	    <xsl:choose>
	        <xsl:when test="contains($check160,' ')">
	            <xsl:call-template name="CamelCaseWord">
	                <xsl:with-param name="text" select="substring-before($check160,' ')"/>
	            </xsl:call-template>
	            <xsl:text> </xsl:text>
	            <xsl:call-template name="camelCase">
	                <xsl:with-param name="text" select="substring-after($check160,' ')"/>
	            </xsl:call-template>
	        </xsl:when>
	        <xsl:otherwise>
	            <xsl:call-template name="CamelCaseWord">
	                <xsl:with-param name="text" select="$check160"/>
	            </xsl:call-template>
	        </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>
	
	<xsl:template name="CamelCaseWord">
	    <xsl:param name="text"/>
	    <xsl:value-of 
    				select="concat(translate(substring($text,1,1),
                             'abcdefghijklmnopqrstuvwxyz',
                             'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 
                   			 ' ',
                   			 translate(substring($text,2,string-length($text)-1), 
                             'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 
                             'abcdefghijklmnopqrstuvwxyz'))" />
	</xsl:template>

</xsl:stylesheet>