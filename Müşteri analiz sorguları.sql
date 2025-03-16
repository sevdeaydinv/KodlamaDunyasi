
-- En �ok al��veri� yapan m��teriler

SELECT K.Ad, COUNT(S.SiparisID) AS Sipari�Say�s�, SUM(S.ToplamTutar) AS ToplamHarcama
FROM Sipari�ler S
JOIN Kullan�c�lar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.Ad
ORDER BY ToplamHarcama DESC;


-- M��teri segmentasyonu

SELECT K.KullaniciID, K.Ad, 
       CASE 
           WHEN SUM(S.ToplamTutar) > 5000 THEN 'VIP'
           WHEN SUM(S.ToplamTutar) BETWEEN 1000 AND 5000 THEN 'Sad�k M��teri'
           ELSE 'Yeni M��teri'
       END AS M��teriSegmenti
FROM Sipari�ler S
JOIN Kullan�c�lar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad;

--  M��terinin sat�n alma s�resi

SELECT K.KullaniciID, K.Ad, 
       DATEDIFF(DAY, MIN(S.SiparisTarihi), MAX(S.SiparisTarihi)) AS ToplamGunFarki
FROM Sipari�ler S
JOIN Kullan�c�lar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad;

--  M��teri sadakat analizi

SELECT Ad, COUNT(SiparisID) AS Sipari�Say�s�
FROM Sipari�ler
JOIN Kullan�c�lar ON Sipari�ler.KullaniciID = Kullan�c�lar.KullaniciID
GROUP BY Ad
HAVING COUNT(SiparisID) > 1;


-- KDV Analizi

SELECT I.Baslik, I.Fiyat, (I.Fiyat * 0.18) AS KDV, (I.Fiyat * 1.18) AS KDVliFiyat
FROM ��erikler I;