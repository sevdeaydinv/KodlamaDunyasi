
-- Günlük/Haftalýk/Aylýk satýþ raporlarý


--  Günlük satýþ raporu
SELECT SiparisTarihi, COUNT(*) AS SipariþSayýsý, SUM(ToplamTutar) AS GünlükSatýþ
FROM Sipariþler
WHERE SiparisTarihi = CAST(GETDATE() AS DATE)
GROUP BY SiparisTarihi;

-- Haftalýk satýþ raporu
SELECT DATEPART(YEAR, SiparisTarihi) AS Yýl, DATEPART(WEEK, SiparisTarihi) AS Hafta, 
       COUNT(*) AS SipariþSayýsý, SUM(ToplamTutar) AS HaftalýkSatýþ
FROM Sipariþler
WHERE SiparisTarihi >= DATEADD(DAY, -7, GETDATE())
GROUP BY DATEPART(YEAR, SiparisTarihi), DATEPART(WEEK, SiparisTarihi);

--  Aylýk satýþ raporu
SELECT YEAR(SiparisTarihi) AS Yýl, MONTH(SiparisTarihi) AS Ay, 
       COUNT(*) AS SipariþSayýsý, SUM(ToplamTutar) AS AylýkSatýþ
FROM Sipariþler
WHERE SiparisTarihi >= DATEADD(MONTH, -1, GETDATE())
GROUP BY YEAR(SiparisTarihi), MONTH(SiparisTarihi);


-- Müþteri bazlý sipariþ raporlarý

SELECT K.KullaniciID, K.Ad, COUNT(S.SiparisID) AS SipariþSayýsý, SUM(S.ToplamTutar) AS ToplamHarcama
FROM Sipariþler S
JOIN Kullanýcýlar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad  
ORDER BY ToplamHarcama DESC;

--  Kategori bazýnda satýþ raporlarý

SELECT K.KategoriAdi, SUM(SD.Miktar) AS SatýþMiktarý, SUM(SD.Miktar * SD.BirimFiyat) AS ToplamSatýþ
FROM SipariþDetaylarý SD
JOIN Ýçerikler I ON SD.IcerikID = I.IcerikID
JOIN Kategoriler K ON I.KategoriID = K.KategoriID
GROUP BY K.KategoriAdi
ORDER BY ToplamSatýþ DESC;


--  Ödeme yöntemine göre sipariþ raporlarý

SELECT OdemeYontemi, COUNT(*) AS SipariþSayýsý, SUM(ToplamTutar) AS ToplamSatýþ
FROM Sipariþler
GROUP BY OdemeYontemi;

--  Ýade/Ýptal raporu

SELECT SipariþDurumu, COUNT(*) AS SipariþSayýsý, SUM(ToplamTutar) AS ToplamTutar
FROM Sipariþler
WHERE SipariþDurumu IN ('Ýptal Edildi')
GROUP BY SipariþDurumu;