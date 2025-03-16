-- 1. Sipari� ��leme Sakl� Prosed�r�
CREATE PROCEDURE sp_ProcessOrder
    @UserID INT,
    @AddressID INT,
    @PaymentMethod VARCHAR(50)
AS
BEGIN
    PRINT 'Stok kontrol� yap�l�yor...';
    PRINT 'Sipari� olu�turuluyor...';
    PRINT '�deme i�lemi ger�ekle�tiriliyor...';
    PRINT 'Stok g�ncelleniyor...';
END;
GO

-- 2. Stok G�ncelleme Tetikleyicisi
CREATE TRIGGER tr_UpdateStock
ON dbo.[Sipari�Detaylar�]  -- T�rk�e karakterler i�in k��eli parantez kullan�ld�
AFTER INSERT
AS
BEGIN
    PRINT 'Stok g�ncelleme i�lemi ger�ekle�tiriliyor...';
    PRINT 'Kritik stok kontrol� yap�l�yor...';
    PRINT 'Bildirim g�nderiliyor...';
END;
GO

-- 3. Sipari� Durumu G�ncelleme Prosed�r�
CREATE PROCEDURE sp_UpdateOrderStatus
    @OrderID INT,
    @NewStatus VARCHAR(50)
AS
BEGIN
    PRINT 'Sipari� durumu g�ncelleniyor...';
    PRINT 'Log kayd� ekleniyor...';
    PRINT 'Bildirim g�nderiliyor...';
END;
GO

-- 4. Sat�� Raporu Sakl� Prosed�r�
CREATE PROCEDURE sp_SalesReport
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    PRINT 'Sat�� istatistikleri hesaplan�yor...';
    PRINT '�r�n performans� analiz ediliyor...';
    PRINT 'Kategori analizi yap�l�yor...';
END;
GO

-- 5. Stok Raporu Sakl� Prosed�r�
CREATE PROCEDURE sp_StockReport
AS
BEGIN
    PRINT 'Stok durumu raporlan�yor...';
    PRINT 'Kritik seviyeler analiz ediliyor...';
    PRINT 'Stok maliyetleri hesaplan�yor...';
END;
GO