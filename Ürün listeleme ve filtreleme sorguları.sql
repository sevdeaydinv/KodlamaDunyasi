
--Kategoriye g�re �r�n listesi

SELECT I.IcerikID, I.Baslik, I.Fiyat, K.KategoriAdi 
FROM ��erikler I
JOIN Kategoriler K ON I.KategoriID = K.KategoriID
ORDER BY K.KategoriAdi;


--  Fiyat aral���na g�re �r�nler

SELECT IcerikID, Baslik, Fiyat 
FROM ��erikler
WHERE Fiyat BETWEEN 4000 AND 7000;  


-- Stok durumuna g�re �r�nler


SELECT IcerikID, Baslik, Fiyat 
FROM ��erikler
WHERE StokMiktari > 20; 


-- En �ok sat�lan �r�nler

SELECT I.IcerikID, I.Baslik, SUM(SD.Miktar) AS ToplamSatis
FROM Sipari�Detaylar� SD
JOIN ��erikler I ON SD.IcerikID = I.IcerikID
GROUP BY I.IcerikID, I.Baslik
ORDER BY ToplamSatis DESC;


-- �ndirimli �r�nler

SELECT IcerikID, Baslik, Fiyat, IndirimOrani 
FROM ��erikler
WHERE IndirimOrani > 10;