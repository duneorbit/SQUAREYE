<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:java="http://xml.apache.org/xalan/java">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<div class="row">
			<ul class="pgwSlideshow">
		    	<xsl:value-of select="java:org.kscb.utilities.xslt.XSLTUtilityManagerThreadLocalWrapper.buildStandardCarousel()"/> 
		    </ul><br/>
		    <label for="headerWidget">Name of Header Widget</label>
		    <div class="inner-addon left-addon">
		    	<i class="glyphicon glyphicon-pencil"></i>
		    	<input class="form-control" id="headerWidget" placeholder="Header Widget" type="text" onblur="javascript:setImageHeaderWidgetName();"/>
		    </div>
		    <br/>
		    
		    <label for="imageHeaderWidget">Image for Header Widget (Click on Large Image to confirm selection)</label>
		    <div class="inner-addon left-addon">
		    	<i class="glyphicon glyphicon-picture"></i>
		    	<input class="form-control" id="imageHeaderWidget" placeholder="Image for Header Widget" type="text"/>
		    </div>
		    <br/>
		    <div class="funkyradio col-md-4">
		        <div class="funkyradio-default">
		            <input type="radio" name="headerWidgetType" id="thickHeaderWidget" value="thick" onclick="javascript:setImageHeaderType(this);"/>
		            <label for="thickHeaderWidget">Thick Header Widget</label>
		        </div>
		        <div class="funkyradio-default">
		            <input type="radio" name="headerWidgetType" id="mediumHeaderWidget" value="medium" onclick="javascript:setImageHeaderType(this);"/>
		            <label for="mediumHeaderWidget">Medium Header Widget</label>
		        </div>
		        <div class="funkyradio-default">
		            <input type="radio" name="headerWidgetType" id="thinHeaderWidget" value="thin" onclick="javascript:setImageHeaderType(this);"/>
		            <label for="thinHeaderWidget">Thin Header Widget</label>
		        </div><br/>
		        <div id="successIndicator">
		        	<button type="Submit" class="btn btn-primary" name="saveHeaderWidget" id="saveHeaderWidget" onclick="javascript:saveHeaderWidget();">Save</button>
		        </div>
		    </div>
		    
	    </div>	
	    <script type="text/javascript">
		    <![CDATA[
		    	
		    	$(document).ready(function(){
				    $('.pgwSlideshow').pgwSlideshow().reload({
					    maxHeight:350
					});
				    
				});
		    	
		    ]]>
	    </script>
	    	       	
	</xsl:template>
				
</xsl:stylesheet>