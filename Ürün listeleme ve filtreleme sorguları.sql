
--Kategoriye göre ürün listesi

SELECT I.IcerikID, I.Baslik, I.Fiyat, K.KategoriAdi 
FROM Ýçerikler I
JOIN Kategoriler K ON I.KategoriID = K.KategoriID
ORDER BY K.KategoriAdi;


--  Fiyat aralýðýna göre ürünler

SELECT IcerikID, Baslik, Fiyat 
FROM Ýçerikler
WHERE Fiyat BETWEEN 4000 AND 7000;  


-- Stok durumuna göre ürünler


SELECT IcerikID, Baslik, Fiyat 
FROM Ýçerikler
WHERE StokMiktari > 20; 


-- En çok satýlan ürünler

SELECT I.IcerikID, I.Baslik, SUM(SD.Miktar) AS ToplamSatis
FROM SipariþDetaylarý SD
JOIN Ýçerikler I ON SD.IcerikID = I.IcerikID
GROUP BY I.IcerikID, I.Baslik
ORDER BY ToplamSatis DESC;


-- Ýndirimli ürünler

SELECT IcerikID, Baslik, Fiyat, IndirimOrani 
FROM Ýçerikler
WHERE IndirimOrani > 10;