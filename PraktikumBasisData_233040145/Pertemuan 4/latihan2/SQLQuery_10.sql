SELECT nama_mata_kuliah  
FROM jadwal_mata_kuliah
WHERE dosen_pengajar LIKE '%ang%' 
ORDER BY dosen_pengajar ASC;