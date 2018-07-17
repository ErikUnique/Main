<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Product Table View</title>
    <link rel="stylesheet" href="css/siteTile.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
    <h3>Toy Department</h3>

<div id="infoDiv">


       
       
      
       <c:forEach var="product" items="${productList}">

				<table id="productTable">
				<tr>
					<td class="1stRowHeight"><div id="imageDiv"><img  src="img/${product.imageName}" id="mainPicture" /></div></td>
				</tr>
				<tr>
					<td class="2ndRowHeight"></td>
				</tr>	
				
				
				<tr>
					<td class="3rdRowHeight">${product.name}</td>
				</tr>			
					
					<tr>		
					<td class="5thRowHeight" >${product.manufacturer}</td>
				</tr>	
				<tr>			
					<td id="price">$${product.price}</td>
				</tr>	
       			<tr>			
					<td class="7thRowHeight">Weight ${product.weightInLbs} Lbs</td>
				</tr>
					
					
       			<tr>
       			
					<c:choose>
				
							<c:when test="${product.averageRating == 5}">
								<td class="4thRowHeight" ><img src="img/5-star.png" class="stars"/></td>
							</c:when>

							<c:when test="${product.averageRating >= 4}">
								<td class="4thRowHeight" ><img src="img/4-star.png" class="stars"/></td>
							</c:when>

							<c:when test="${product.averageRating >= 3}">
								<td class="4thRowHeight" ><img src="img/3-star.png" class="stars"/></td>
							</c:when>

							<c:when test="${product.averageRating >= 2}">
								<td class="4thRowHeight" ><img src="img/2-star.png" class="stars"/></td>
							</c:when>

							<c:otherwise>
								<td class="4thRowHeight" ><img src="img/1-star.png" class="stars"/></td>
							</c:otherwise>
						
						</c:choose>
				
						
				</tr>
				
       
     
				</table>
			</c:forEach>
       </div>

    </section>
</body>
</html>