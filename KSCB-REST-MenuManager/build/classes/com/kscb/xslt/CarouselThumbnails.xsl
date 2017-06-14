<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:java="http://xml.apache.org/xalan/java">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<div class="row">
			
			
			<div class="container">
				<div class="row">
					<ul class="pgwSlideshow">
				    	<xsl:value-of select="java:org.kscb.utilities.xslt.XSLTUtilityManagerThreadLocalWrapper.buildStandardCarousel()"/> 
				    </ul><br/>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-6">
	            		<div class="well">
						    <label for="carouselWidget">Name of Header Widget</label>
						    <div class="inner-addon left-addon">
						    	<i class="glyphicon glyphicon-pencil"></i>
						    	<input class="form-control" id="carouselWidget" placeholder="Carousel Widget" type="text" onblur="javascript:setCarouselName(this);"/>
						    </div>
						    <br/>
	            		</div>
	            	</div>
	            	<div class="col-sm-6 col-md-6">
	            		<div class="well">
	            			<div class="row">
		            			<div class="funkyradio col-sm-6 col-md-6">
		            				
            						<div class="funkyradio-default">
							            <input type="radio" name="carouselWidgetType" id="slide" value="slide" onclick="javascript:setCarouselType(this);"/>
							            <label for="slide">Slide Carousel</label>
							        </div>
							        <div class="funkyradio-default">
							            <input type="radio" name="carouselWidgetType" id="fade" value="fade" onclick="javascript:setCarouselType(this);"/>
							            <label for="fade">Fade Carousel</label>
							        </div>
							        <div class="funkyradio-default">
							            <input type="radio" name="carouselWidgetType" id="zoom" value="zoom" onclick="javascript:setCarouselType(this);"/>
							            <label for="zoom">Zoom Carousel</label>
							        </div>
            					
            					
            						<div class="funkyradio-default">
							            <input type="radio" name="carouselWidgetType" id="fadeZoom" value="fadeZoom" onclick="javascript:setCarouselType(this);"/>
							            <label for="fadeZoom">Fade Zoom Carousel</label>
							        </div>
							        <div class="funkyradio-default">
							            <input type="radio" name="carouselWidgetType" id="fadeZoomOut" value="fadeZoomOut" onclick="javascript:setCarouselType(this);"/>
							            <label for="fadeZoomOut">Fade Zoom Out Carousel</label>
							        </div>
		            					
							    </div>
							</div>
	            		</div>
	            	</div>
	            </div>
	        </div>
		    
		    <div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-6">
	            		<div class="well">
	            			<label for="imageHeaderWidget">Image for Header Widget (Click on Large Image to confirm selection)</label>
	            			<div class="inner-addon left-addon">
	            				<i class="glyphicon glyphicon-picture"></i>
						    	<input class="form-control" id="imageHeaderWidget" placeholder="Image for Carousel Entry" type="text"/><br/>
						    </div>
						    
							<label for="itemHeader">Heading Text</label>
							<div class="inner-addon left-addon">
						    	<i class="glyphicon glyphicon-pencil"></i>
		    					<input class="form-control" id="itemHeader" placeholder="Item Header" type="text"/><br/>
		    				</div>
		    				
		    				<label for="itemParagraph">Short Information Paragraph</label>
		    				<div class="inner-addon left-addon">
						    	<i class="glyphicon glyphicon-pencil"></i>
		    					<input class="form-control" id="itemParagraph" placeholder="Item Header Paragraph" type="text"/><br/>
		    				</div>
		    				
		    				<button type="Submit" class="btn btn-primary" name="addCarouselItem" id="addCarouselItem" onclick="javascript:addCarouselItem();">Add</button>         
						</div>		                   
					</div>
					<div class="col-sm-6 col-md-6">
						<div class="well">
							<table class="table">
								<thead>
									<tr>
										<th>Thumbnail</th>
										<th>Overlay Text</th>
									</tr>
								</thead>
								<tbody id="carouselEntries">
									
								</tbody>
							</table>                
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<div class="well">
							<div id="successIndicator" align="right">
				        		<button type="Submit" class="btn btn-primary" name="saveCarouselWidget" id="saveCarouselWidget" onclick="javascript:saveCarouselWidget();">Save</button>
				        	</div>
				        </div>
				    </div>
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