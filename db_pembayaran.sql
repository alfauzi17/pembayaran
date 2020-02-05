CREATE TABLE penggunaan (
	
	id_penggunaan VARCHAR (50) NOT NULL,
   
	id_pelanggan VARCHAR (50) NOT NULL,
    
	bulan VARCHAR (100) NOT NULL,
    
	tahun VARCHAR NOT NULL,
    
	meter_awal INTEGER NOT NULL,
    
	meter_akhir INTEGER NOT NULL,
    
	PRIMARY KEY (id_penggunaan)

);



CREATE TABLE pelanggan (
	
	id_pelanggan VARCHAR (50) NOT NULL,
    
	username VARCHAR (100) NOT NULL,
    
	password VARCHAR (100) NOT NULL,
    
	nomor_kwh INTEGER NOT NULL,
    
	nama_pelanggan VARCHAR (100) NOT NULL,
    
	alamat VARCHAR (200) NOT NULL,
    
	id_tarif VARCHAR (50) NOT NULL,
    
	PRIMARY KEY (id_pelanggan)

);


	CREATE TABLE tagihan (
	
	id_tagihan VARCHAR (50) NOT NULL,
    
	id_pengunaan VARCHAR (50) NOT NULL,
    
	id_pelanggan VARCHAR (50) NOT NULL,
    
	bulan VARCHAR (100) NOT NULL,
    
	tahun VARCHAR (100) NOT NULL,
    
	jumlah_meter INTEGER NOT NULL,
    
	status VARCHAR (100) NOT NULL,
    
	PRIMARY KEY (id_tagihan)

);



CREATE TABLE pembayaran (
	
	id_pembayaran VARCHAR (50) NOT NULL,
    
	id_tagihan VARCHAR (50) NOT NULL,
    
	id_pelanggan VARCHAR (50) NOT NULL,
    
	tanggal_pembayaran DATE NOT NULL,
    
	bulan_bayar DATE NOT NULL,
    
	biaya_admin INTEGER NOT NULL,
    
	total_bayar INTEGER NOT NULL,
    
	id_admin VARCHAR (50) NOT NULL,
    
	PRIMARY KEY (id_pembayaran)

);



CREATE TABLE tarif (
	
	id_tarif VARCHAR (50) NOT NULL,
    
	daya VARCHAR (100) NOT NULL,
    
	tarifperkwh INTEGER NOT NULL,
    
	PRIMARY KEY (id_tarif)

);



CREATE TABLE tb_admin (
	
	id_admin VARCHAR (50) NOT NULL,
    
	username VARCHAR (100) NOT NULL,
    
	password VARCHAR (100) NOT NULL,
    
	nama_admin VARCHAR (100) NOT NULL,
    
	id_level VARCHAR (50) NOT NULL,
    
	PRIMARY KEY (id_admin)

);



CREATE TABLE tb_level (
	
	id_level VARCHAR (50) NOT NULL,
	
	nama_level VARCHAR (100) NOT NULL,		
	
	PRIMARY KEY (id_level)

);