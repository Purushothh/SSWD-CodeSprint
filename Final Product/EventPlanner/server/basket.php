<?php
session_start();
include("db.php");
$pagename="Smart Basket"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("header.html"); //include header layout file
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page
if (isset($_POST["h_prodid"],$_POST["quantity"]))
{

if(isset($_SESSION['basket']))
{
	$newProdId=$_POST["h_prodid"];
	$reququantity=$_POST["quantity"];
	#echo "<h5> Product Id: ".$newProdId."</h5>";
	#echo "<h5> Product Quantity: ".$reququantity."</h5>";
	//create a new cell in the basket session array. Index this cell with the new product id.
	//Inside the cell store the required product quantity
	
	$_SESSION['basket'][$newProdId]=$reququantity;
	//echo "<p>The doc id ".$newdocid." has been ".$_SESSION['basket'][$newdocid];
	echo "<p>1 item added to the basket";
	echo "<table>
    <th>Product Name</th><th>Price</th><th>Quantity</th><th>Subtotal</th> 
    <tr><td></td><td></td><td>$reququantity</td><td></td></tr>
    <tr><td colspan='3'></td><td></td></tr>
	</table>";
	                                                                                                                                                                                                                                                                                                             
}
}
else{
	echo "Current basket unchanged";
}

/**/

//display random text

include("footer.html"); //include head layout
echo "</body>";
?>