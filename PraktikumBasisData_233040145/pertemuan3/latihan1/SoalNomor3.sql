SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
INNER JOIN Sales.Orders AS O
ON C.custid = O.custid;

/*
Alias untuk tabel sudah didefinisikan (C untuk Customers dan O untuk Orders), namun penggunaannya belum konsisten di bagian SELECT dan JOIN. Ini menyebabkan kebingungan di SQL karena ada campuran antara nama tabel asli dan alias.
*/