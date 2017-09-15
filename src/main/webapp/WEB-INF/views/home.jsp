<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 


   
   </section>
	<section>
   <div align="center">
	        
	        <a href=" <spring:url value="/newContact"/> "
								  class="btn btn-primary"> Add new contact</a>
							</p>
	        <table border="1">
	        <tr>
	        	<th>No</th>
	        	<th>Name</th>
	        	<th>Email</th>
	        	<th>Phone</th>
	        	<th>Action</th>
	        	
	        	</tr>
	        	
				<c:forEach var="contact" items="${listContact}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.phone}</td>
					<td>
						<a href="editContact?id=${contact.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteContact?id=${contact.id}">Delete</a>
					</td>
							
	        	</tr>
				</c:forEach>	        	
			</table>
    	</div>
</section>
