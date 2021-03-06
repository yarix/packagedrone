<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  trimDirectiveWhitespaces="true"
  %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://eclipse.org/packagedrone/repo/channel" prefix="pm" %>
<%@ taglib uri="http://eclipse.org/packagedrone/web" prefix="web" %>

<%@ taglib prefix="h" tagdir="/WEB-INF/tags/main" %>
<%@ taglib prefix="s" tagdir="/WEB-INF/tags/storage" %>

<h:main title="View cache" subtitle="${pm:channel(channel) }">

<jsp:attribute name="subtitleHtml"><s:channelSubtitle channel="${channel }" /></jsp:attribute>

<jsp:body>

  <h:buttonbar menu="${menuManager.getActions(channel) }"/>
  <h:nav menu="${menuManager.getViews(channel) }"/>
  
  <div class="table-responsive">
  	<table class="table table-striped table-hover">
  	
  	    <thead>
  	        <tr>
  	            <th>Namespace</th>
  	            <th>Key</th>
  	            <th>Name</th>
  	            <th>Mime Type</th>
  	            <th>Size</th>
  	            <th></th>
  	        </tr>
  	    </thead>
  	    
  	    <tbody>
  	       <c:forEach var="entry" items="${cacheEntries }">
  	           <tr>
  	               <td>${fn:escapeXml(entry.key.namespace) }</td>
  	               <td>${fn:escapeXml(entry.key.key) }</td>
  	               <td>${fn:escapeXml(entry.name) }</td>
  	               <td>${fn:escapeXml(entry.mimeType) }</td>
  	               <td class="text-right"><web:bytes amount="${entry.size }"/></td>
  	               <c:url var="url" value="/channel/${channel.id }/viewCacheEntry">
  	                   <c:param name="namespace" value="${entry.key.namespace }" />
  	                   <c:param name="key" value="${entry.key.key }" />
  	               </c:url>
  	               <td><a href="${url }">View</a></td>
  	           </tr>
  	       </c:forEach>
  	    </tbody>
  	</table>
  </div>

</jsp:body>

</h:main>