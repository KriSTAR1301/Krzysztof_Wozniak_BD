--Krzysztof Wozniak
--Zad.1
CREATE FUNCTION FiBo (@numer INT )
RETURNS INT
AS
BEGIN
DECLARE @wynik INT, @jeden INT , @dwa INT, @iterator INT;
SET @jeden=1
SET @dwa=1 
SET @iterator=3 
    WHILE @iterator <= @numer
        BEGIN
            SET @wynik=@jeden+@dwa
			SET @jeden=@dwa
			SET @dwa=@wynik
			SET @iterator=@iterator+1
        END
    RETURN @wynik             
END

--SELECT dbo.FiBo (5)


CREATE PROCEDURE Liczba @n INT  

AS BEGIN 
   DECLARE @iterator INT
   SELECT 0 AS numer_liczby_ciagu , 1 AS Wartosc_Ciagu_Fibonacciego
   SELECT 1 AS numer_liczby_ciagu , 1 AS Wartosc_Ciagu_Fibonacciego
   SELECT 2 AS numer_liczby_ciagu ,1 AS Wartosc_Ciagu_Fibonacciego
   SET @iterator = 3
   WHILE @iterator <= @n
   BEGIN
   SELECT @iterator AS numer_liczby_ciagu , dbo.FiBo(@iterator) AS Wartosc_Ciagu_Fibonacciego 
   SET @iterator=@iterator+1
END
END
GO
EXEC Liczba 9


--2 
CREATE TRIGGER Nazwisko_UPPER ON Person.Person
AFTER INSERT, UPDATE, DELETE
AS
BEGIN 
UPDATE Person.Person
SET LastName = UPPER(LastName) 
WHERE LastName IN (SELECT LastName FROM INSERTED)
PRINT('Nazwisko z duzych liter')
END

SELECT * FROM Person.Person
INSERT INTO Person.Person (BusinessEntityID,PersonType,FirstName,MiddleName,LastName,EmailPromotion) VALUES (20778,'IN','Jan','O','Mazurek',0)
--INSERT INTO Person.Person (BusinessEntityID,PersonType,FirstName,MiddleName,LastName,EmailPromotion) VALUES (20779,'IN','Mateusz','O','Rokuszewski',1)
--INSERT INTO Person.Person (BusinessEntityID,PersonType,FirstName,MiddleName,LastName,EmailPromotion) VALUES (20780,'IN','Wojciech','O','Kowalczyk','IN',1)
--INSERT INTO Person.Person (BusinessEntityID,PersonType,FirstName,MiddleName,LastName,EmailPromotion) VALUES (20781,'IN','Wojciech','O','Hadaj','IN',2)
GO
INSERT INTO Person.BusinessEntity(rowguid)
VALUES(newid())

SELECT * FROM Person.Person

--3
CREATE TRIGGER taxRateMonitoring
ON Sales.SalesTaxRate
AFTER INSERT, UPDATE, DELETE
AS
BEGIN 
DECLARE @Nowa_wartosc INT, @Wartosc INT
SELECT @Nowa_wartosc = TaxRate FROM INSERTED SalesTaxRate
SELECT @Wartosc = TaxRate FROM DELETED
IF @Nowa_wartosc > @Wartosc*1.3
PRINT 'Blad - za wysoka zmiana wartosci'
END
GO
SELECT * FROM Sales.SalesTaxRate

UPDATE Sales.SalesTaxRate SET TaxRate= 240.00 WHERE TaxRate=7.00

