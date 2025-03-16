
-- G�nl�k/Haftal�k/Ayl�k sat�� raporlar�


--  G�nl�k sat�� raporu
SELECT SiparisTarihi, COUNT(*) AS Sipari�Say�s�, SUM(ToplamTutar) AS G�nl�kSat��
FROM Sipari�ler
WHERE SiparisTarihi = CAST(GETDATE() AS DATE)
GROUP BY SiparisTarihi;

-- Haftal�k sat�� raporu
SELECT DATEPART(YEAR, SiparisTarihi) AS Y�l, DATEPART(WEEK, SiparisTarihi) AS Hafta, 
       COUNT(*) AS Sipari�Say�s�, SUM(ToplamTutar) AS Haftal�kSat��
FROM Sipari�ler
WHERE SiparisTarihi >= DATEADD(DAY, -7, GETDATE())
GROUP BY DATEPART(YEAR, SiparisTarihi), DATEPART(WEEK, SiparisTarihi);

--  Ayl�k sat�� raporu
SELECT YEAR(SiparisTarihi) AS Y�l, MONTH(SiparisTarihi) AS Ay, 
       COUNT(*) AS Sipari�Say�s�, SUM(ToplamTutar) AS Ayl�kSat��
FROM Sipari�ler
WHERE SiparisTarihi >= DATEADD(MONTH, -1, GETDATE())
GROUP BY YEAR(SiparisTarihi), MONTH(SiparisTarihi);


-- M��teri bazl� sipari� raporlar�

SELECT K.KullaniciID, K.Ad, COUNT(S.SiparisID) AS Sipari�Say�s�, SUM(S.ToplamTutar) AS ToplamHarcama
FROM Sipari�ler S
JOIN Kullan�c�lar K ON S.KullaniciID = K.KullaniciID
GROUP BY K.KullaniciID, K.Ad  
ORDER BY ToplamHarcama DESC;

--  Kategori baz�nda sat�� raporlar�

SELECT K.KategoriAdi, SUM(SD.Miktar) AS Sat��Miktar�, SUM(SD.Miktar * SD.BirimFiyat) AS ToplamSat��
FROM Sipari�Detaylar� SD
JOIN ��erikler I ON SD.IcerikID = I.IcerikID
JOIN Kategoriler K ON I.KategoriID = K.KategoriID
GROUP BY K.KategoriAdi
ORDER BY ToplamSat�� DESC;


--  �deme y�ntemine g�re sipari� raporlar�

SELECT OdemeYontemi, COUNT(*) AS Sipari�Say�s�, SUM(ToplamTutar) AS ToplamSat��
FROM Sipari�ler
GROUP BY OdemeYontemi;

--  �ade/�ptal raporu

SELECT Sipari�Durumu, COUNT(*) AS Sipari�Say�s�, SUM(ToplamTutar) AS ToplamTutar
FROM Sipari�ler
WHERE Sipari�Durumu IN ('�ptal Edildi')
GROUP BY Sipari�Durumu;