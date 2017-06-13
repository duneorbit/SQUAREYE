package org.kscb.utilities.xslt;

import java.io.ByteArrayOutputStream;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamWriter;

import org.kscb.entities.Document;

public class XSLTUtilityManager {
	
	private DocumentPager documentPager = null;
	
	public XSLTUtilityManager(List<Document> imageDocuments){
		this.documentPager = new DocumentPager(imageDocuments);
	}
	
	public String buildCarouselIndicatorsXML(){
		@SuppressWarnings("unchecked")
		List<Document> images = this.documentPager.getList();
		if(images.size()>0){
			try{
				ByteArrayOutputStream stream = new ByteArrayOutputStream();
				XMLOutputFactory output = XMLOutputFactory.newInstance();
				XMLStreamWriter writer = output.createXMLStreamWriter(stream);
				writer.writeStartDocument();
				writer.writeStartElement("ol");
				writer.writeAttribute("class", "carousel-indicators");
				
				BigDecimal bd = new BigDecimal(images.size());
				bd = bd.divide(new BigDecimal(4));
				
				int slides = (images.size()<4) ? 1 : (int)Math.ceil(bd.floatValue());
				
				for(int i=0;i<slides;i++){
					writer.writeStartElement("li");
					writer.writeAttribute("data-target", "#myCarousel");
					writer.writeAttribute("data-slide", String.valueOf(i));
					if(i==0){
						writer.writeAttribute("class", "active");
					}
					writer.writeEndElement();
					writer.flush();
				}
				
				writer.writeEndElement();
				writer.writeEndDocument();
				writer.flush();
				
				return new String(stream.toByteArray());
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public String buildCarouselItemsXML(){
		
		try{
			ByteArrayOutputStream stream = new ByteArrayOutputStream();
			XMLOutputFactory output = XMLOutputFactory.newInstance();
			XMLStreamWriter writer = output.createXMLStreamWriter(stream);
			
			writer.writeStartDocument();
			writer.writeStartElement("div");
			writer.writeAttribute("class", "carousel-inner");
			
			this.documentPager.setPageSize(4);
			this.documentPager.setPage(1);
			int item = 0;
			
			while(this.documentPager.getNextPage()>0){
				
				if(item>0){
					this.documentPager.setPage(this.documentPager.getNextPage());
				}
				List<Document> documents = this.documentPager.getListForPage();
				Iterator<Document> itr = documents.iterator();
				
				
				writer.writeStartElement("div");
				if(item==0){
					writer.writeAttribute("class", "item active");
				}
				writer.writeStartElement("div");
				writer.writeAttribute("class", "row-fluid");
				
				while(itr.hasNext()){
					
					Document document = itr.next();
					
					writer.writeStartElement("div");
					writer.writeAttribute("class", "span3");
					
					writer.writeStartElement("a");
					writer.writeAttribute("href", "#x");
					writer.writeAttribute("class", "thumbnail");
					
					writer.writeStartElement("img");
					writer.writeAttribute("src", "http://localhost:8080/KSCB-REST-MenuManager/"+document.getUrl());
					writer.writeAttribute("alt", "Image");
					writer.writeAttribute("style", "max-width:100%;");
					writer.writeEndElement();
					
					writer.writeEndElement();
					
					writer.writeEndElement();
					writer.flush();
				}
				
				writer.writeEndElement();
				writer.writeEndElement();
				writer.flush();
				
				item++;
			}
			
			writer.writeEndElement();
			writer.flush();
			
			return new String(stream.toByteArray());
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
	
	public String buildStandardCarousel(){
		try{
			ByteArrayOutputStream stream = new ByteArrayOutputStream();
			XMLOutputFactory output = XMLOutputFactory.newInstance();
			XMLStreamWriter writer = output.createXMLStreamWriter(stream);
			
			this.documentPager.setPageSize(4);
			this.documentPager.setPage(1);
			int item = 0;
			if(this.documentPager.getNextPage()>0){
				while(this.documentPager.getNextPage()>0){
					if(item>0){
						this.documentPager.setPage(this.documentPager.getNextPage());
					}
					List<Document> documents = this.documentPager.getListForPage();
					Iterator<Document> itr = documents.iterator();
					
					while(itr.hasNext()){
						Document document = itr.next();
						
						writer.writeStartElement("li");
						writer.writeStartElement("a");
						writer.writeAttribute("href", "javascript:doConfirmImageSelection("+document.getId()+",'"+document.getName()+"', '"+document.getUrl()+"');");
						writer.writeStartElement("img");
						writer.writeAttribute("src", "http://localhost:8080"+document.getUrl());
						writer.writeAttribute("alt", document.getName());
						writer.writeAttribute("data-description", document.getName());
						writer.writeEndElement();
						writer.writeEndElement();
						writer.writeEndElement();
						writer.flush();
						
						item++;
					}
					
				}
			}else{
				if(this.documentPager.getList().size()>0){
					List<Document> documents = this.documentPager.getList();
					Iterator<Document> itr = documents.iterator();
					
					while(itr.hasNext()){
						Document document = itr.next();
						
						writer.writeStartElement("li");
						writer.writeStartElement("img");
						writer.writeAttribute("src", "http://localhost:8080"+document.getUrl());
						writer.writeAttribute("alt", document.getName());
						writer.writeAttribute("data-description", document.getName());
						writer.writeEndElement();
						writer.writeEndElement();
						writer.flush();
						
						item++;
					}
				}
			}
			
			return new String(stream.toByteArray());
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}

}
