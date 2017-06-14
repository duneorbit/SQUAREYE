<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:java="http://xml.apache.org/xalan/java">
	<xsl:output method="html" />
	
	<xsl:template match="/TemplateWidgetXML">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'topEditor'])" />
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'middleOneEditor'])" />
				</div>
				<div class="col-sm-5 col-md-5">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'middleTwoEditor'])" />
				</div>
				<div class="col-sm-2 col-md-2">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'middleThreeEditor'])" />
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-9">
					<xsl:value-of select="java:org.kscb.dao.utils.Utilities.decode(//Editor[@name = 'bottomEditor'])" />
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="/TemplateXML">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<xsl:variable name="topEditor">
						<xsl:value-of select="//Editor[@name = 'topEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'topEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'topEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$topEditor"/>
					</xsl:element>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<xsl:variable name="middleOneEditor">
						<xsl:value-of select="//Editor[@name = 'middleOneEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'middleOneEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'middleOneEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$middleOneEditor"/>
					</xsl:element>
				</div>
				<div class="col-sm-5 col-md-5">
					<xsl:variable name="middleTwoEditor">
						<xsl:value-of select="//Editor[@name = 'middleTwoEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'middleTwoEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'middleTwoEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$middleTwoEditor"/>
					</xsl:element>
				</div>
				<div class="col-sm-2 col-md-2">
					<xsl:variable name="middleThreeEditor">
						<xsl:value-of select="//Editor[@name = 'middleThreeEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'middleThreeEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'middleThreeEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$middleThreeEditor"/>
					</xsl:element>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-9">
					<xsl:variable name="bottomEditor">
						<xsl:value-of select="//Editor[@name = 'bottomEditor']" />
					</xsl:variable>
					<xsl:element name="textarea">
						<xsl:attribute name="class">
            				<xsl:value-of select="'forEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="name">
            				<xsl:value-of select="'bottomEditor'"/>
        				</xsl:attribute>
        				<xsl:attribute name="cols">
            				<xsl:value-of select="'40'"/>
        				</xsl:attribute>
						<xsl:attribute name="id">
            				<xsl:value-of select="'bottomEditor'"/>
        				</xsl:attribute>
        				<xsl:value-of select="$bottomEditor"/>
					</xsl:element>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="blank">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<textarea class="forEditor" name="topEditor" cols="40" id="topEditor"/>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-2 col-md-2">
					<textarea class="forEditor" name="middleOneEditor" cols="40" id="middleOneEditor"/>
				</div>
				<div class="col-sm-5 col-md-5">
					<textarea class="forEditor" name="middleTwoEditor" cols="40" id="middleTwoEditor"/>
				</div>
				<div class="col-sm-2 col-md-2">
					<textarea class="forEditor" name="middleThreeEditor" cols="40" id="middleThreeEditor"/>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-9">
					<textarea class="forEditor" name="bottomEditor" cols="40" id="bottomEditor"/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>