
-- Kritik stok seviyesindeki �r�nler

SELECT IcerikID, Baslik, StokMiktari
FROM ��erikler
WHERE StokMiktari < 20;  


-- Stok hareket raporu

SELECT I.IcerikID, I.Baslik, SUM(SD.Miktar) AS ToplamSat��
FROM Sipari�Detaylar� SD
JOIN ��erikler I ON SD.IcerikID = I.IcerikID
GROUP BY I.IcerikID, I.Baslik
ORDER BY ToplamSat�� DESC;

