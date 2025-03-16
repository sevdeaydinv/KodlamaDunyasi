
-- Kritik stok seviyesindeki ürünler

SELECT IcerikID, Baslik, StokMiktari
FROM Ýçerikler
WHERE StokMiktari < 20;  


-- Stok hareket raporu

SELECT I.IcerikID, I.Baslik, SUM(SD.Miktar) AS ToplamSatýþ
FROM SipariþDetaylarý SD
JOIN Ýçerikler I ON SD.IcerikID = I.IcerikID
GROUP BY I.IcerikID, I.Baslik
ORDER BY ToplamSatýþ DESC;

