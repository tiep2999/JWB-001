
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Add customer</title>
    <style>
        #CustomerList {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 30%;
            margin-left: 30%;
        }
        #CustomerList td, #CustomerList th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        #CustomerList tr:nth-child(even){background-color: #f2f2f2;}
        #CustomerList th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #4253fe;
            color: white;
        }
        input[type=text]:first-child{
            margin-top: 10px;
        }
        input[type=text]{
            width: 300px;
            height: 38px;
            margin-left: 72px;
            text-align: center;
            border-radius: 3px;
            border: none;
            align-content: center;
            margin-bottom: 30px;
        }
        .submit:hover{
            background-color: #104f66;
            color: white;
        }
        .submit{
            margin-left: 150px;
            margin-bottom: 10px;
            background-color: #4253fe;
            border: none;
            padding: 10px 36px;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            outline: none;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        input[type=number]{
            width: 300px;
            height: 38px;
            margin-left: 72px;
            text-align: center;
            border-radius: 3px;
            border: none;
            align-content: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<table id="CustomerList" items="Customer">
    <tr>
        <th>Customer Profile</th>
    </tr>
    <tr>
        <td>
            <p style="text-align: center">Full Name:  ${Customer.name}</p>
            <p style="text-align: center">Email:  ${Customer.email}</p>
            <p style="text-align: center">Phone:  ${Customer.phone}</p>
            <p style="text-align: center">Balance:  ${Customer.balance} VND</p>
            <form action="/Customer/transfer" method="get">
                <input type="hidden" value="${Customer.id}" name="CustomerId">
                <input type="submit" class="submit" value="Transfers">
            </form>
        </td>
    </tr>
</table>
</body>
</html>
