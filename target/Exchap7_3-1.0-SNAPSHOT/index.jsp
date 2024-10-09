<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CD list</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>

    <div class="cd-list-container">
        <h2>CD list</h2>
        <table>
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <!-- Sản phẩm 1 -->
                <tr>
                    <td>86 (the band) - True Life Songs and Pictures</td>
                    <td>$14.95</td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden" name="productName" value="86 (the band) - True Life Songs and Pictures">
                            <input type="hidden" name="price" value="14.95">
                            <input type="hidden" name="quantity" value="1"> <!-- Mặc định số lượng là 1 -->
                            <button type="submit" class="add-to-cart">Add To Cart</button>
                        </form>
                    </td>
                </tr>
                
                <!-- Sản phẩm 2 -->
                <tr>
                    <td>Paddlefoot - The first CD</td>
                    <td>$12.95</td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden" name="productName" value="Paddlefoot - The first CD">
                            <input type="hidden" name="price" value="12.95">
                            <input type="hidden" name="quantity" value="1"> <!-- Mặc định số lượng là 1 -->
                            <button type="submit" class="add-to-cart">Add To Cart</button>
                        </form>
                    </td>
                </tr>
                
                <!-- Sản phẩm 3 -->
                <tr>
                    <td>Paddlefoot - The second CD</td>
                    <td>$14.95</td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden" name="productName" value="Paddlefoot - The second CD">
                            <input type="hidden" name="price" value="14.95">
                            <input type="hidden" name="quantity" value="1"> <!-- Mặc định số lượng là 1 -->
                            <button type="submit" class="add-to-cart">Add To Cart</button>
                        </form>
                    </td>
                </tr>

                <!-- Sản phẩm 4 -->
                <tr>
                    <td>Joe Rut - Genuine Wood Grained Finish</td>
                    <td>$14.95</td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden" name="productName" value="Joe Rut - Genuine Wood Grained Finish">
                            <input type="hidden" name="price" value="14.95">
                            <input type="hidden" name="quantity" value="1"> <!-- Mặc định số lượng là 1 -->
                            <button type="submit" class="add-to-cart">Add To Cart</button>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
