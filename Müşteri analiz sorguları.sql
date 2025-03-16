
-- En çok alýþveriþ yapan müþteriler

SELECT K.Ad, COUNT(S.SiparisID) AS SipariþSayýsý, SUM(S.ToplamTutar) AS ToplamHarcama
FROM Sipariþler S
JOIN Kullanýcýlar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.Ad
ORDER BY ToplamHarcama DESC;


-- Müþteri segmentasyonu

SELECT K.KullaniciID, K.Ad, 
       CASE 
           WHEN SUM(S.ToplamTutar) > 5000 THEN 'VIP'
           WHEN SUM(S.ToplamTutar) BETWEEN 1000 AND 5000 THEN 'Sadýk Müþteri'
           ELSE 'Yeni Müþteri'
       END AS MüþteriSegmenti
FROM Sipariþler S
JOIN Kullanýcýlar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad;

--  Müþterinin satýn alma süresi

SELECT K.KullaniciID, K.Ad, 
       DATEDIFF(DAY, MIN(S.SiparisTarihi), MAX(S.SiparisTarihi)) AS ToplamGunFarki
FROM Sipariþler S
JOIN Kullanýcýlar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad;

--  Müþteri sadakat analizi

SELECT Ad, COUNT(SiparisID) AS SipariþSayýsý
FROM Sipariþler
JOIN Kullanýcýlar ON Sipariþler.KullaniciID = Kullanýcýlar.KullaniciID
GROUP BY Ad
HAVING COUNT(SiparisID) > 1;


-- KDV Analizi

SELECT I.Baslik, I.Fiyat, (I.Fiyat * 0.18) AS KDV, (I.Fiyat * 1.18) AS KDVliFiyat
FROM Ýçerikler I;