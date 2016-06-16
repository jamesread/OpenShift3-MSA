<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="margin-top: 5em;"></div>
<form target="_self" method="post" style="margin: 0px auto;">
	<table style="margin: 0px auto; width: 30em; border: 0px;">
		<tr>
			<td><input type="text" name="query" size="50">
				<button type="submit">Search</button></td>
		</tr>
	</table>
</form>

<table>

	<tbody>
<c:forEach var="product" items="${products}">
		<tr>
			<td>
				<caption>${product.name}</caption>
				<img
					alt="${product.name}" src="/images/${product.image}.png"
					height="144" width="144">
					</td>
			<td>${product.description}</td>
			<td>Product
				x_Dimensions: ${product.length}cm x ${product.width}cm x ${product.height}cm
				<br /> Product Weight: ${product.weight}kg
			</td>
			<td>
				<p style="font-size: 1.5em">$${product.price}</p>
				<p>Availability: ${product.availability}</p> <c:if
					test="${sessionScope.customer != null}">
					<form target="_self" method="post">
						<input type="hidden" name="sku" value="${product.sku}">
						<button name="purchase" value="true" type="submit">Purchase</button>
					</form>
				</c:if>
			</td>
		</tr>
</c:forEach>
	</tbody>
</table>
