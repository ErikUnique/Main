<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Product List View</title>
    <link rel="stylesheet" href="css/siteList.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">List Layout</a></li>
            <li><a href="#">Tile Layout</a></li>
            <li><a href="#">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">

<h3>Toy Department</h3>


       <c:forEach var="product" items="${productList}">
 
        
 
       
       <img  src="img/${product.imageName}" class ="mainPicture" />
       
    
      
    	<div class="notPicture">
    	
       <p id="title" >${product.name}</p>
       
       
       
       
       				<c:if test="${product.topSeller}">
       
       				<p id="bestSeller"> Best Seller!</p>
       
       				</c:if>
       
       				
    
       <p id="manufacturer">${product.manufacturer}</p>
    
          <p id = "price">$${product.price}</p>
       
            <!--  one of the dollar signs actually displays -->
       <p class="below bold">Weight ${product.weightInLbs} lbs</p>
             
     	
     						<c:choose>
										<c:when test="${product.averageRating == 5}">
										
											<img src="img/5-star.png"class="stars below"/>
										</c:when>
				
										<c:when test="${product.averageRating >= 4}">
											<img src="img/4-star.png"class="stars below"/>
										</c:when>
				
										<c:when test="${product.averageRating >= 3}">
											<img src="img/3-star.png"class="stars below"/>
										</c:when>
				
										<c:when test="${product.averageRating >= 2}">
											<img src="img/2-star.png"class="stars below"/>
										</c:when>
				
										<c:otherwise>
											<img src="img/1-star.png"class="stars below"/>
										</c:otherwise>
    				 		</c:choose>
  
   
     		</div>
     		<hr/>
       </c:forEach>
       
   
       

    </section>
</body>
</html>