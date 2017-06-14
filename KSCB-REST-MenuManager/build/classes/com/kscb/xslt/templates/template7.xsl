<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:java="http://xml.apache.org/xalan/java">
	<xsl:output method="html" />
	
	<xsl:template match="/TemplateWidgetXML">
		<div class="container">
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'leftEditor'])" />
				</div>
				<div class="col-sm-7 col-md-7">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'rightEditor'])" />
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="/TemplateXML">
		<div class="container">
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<xsl:variable name="leftEditor">
						<xsl:value-of select="//Editor[@name = 'leftEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'leftEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'leftEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$leftEditor"/>
					</xsl:element>
				</div>
				<div class="col-sm-7 col-md-7">
					<xsl:variable name="rightEditor">
						<xsl:value-of select="//Editor[@name = 'rightEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'rightEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'rightEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$rightEditor"/>
					</xsl:element>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="blank">
		<div class="container">
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<textarea class="forEditor" name="leftEditor" cols="40" id="leftEditor"/>
				</div>
				<div class="col-sm-7 col-md-7">
					<textarea class="forEditor" name="rightEditor" cols="40" id="rightEditor"/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>