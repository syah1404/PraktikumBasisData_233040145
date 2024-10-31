SELECT * 
FROM mahasiswa
WHERE id_mahasiswa IN (
    SELECT mahasiswa_id 
    FROM pembayaran
    WHERE status_pembayaran = 'lunas'
);