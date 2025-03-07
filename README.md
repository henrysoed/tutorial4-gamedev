# Tutorial 4

#### Pada tutorial kali ini, saya mencoba untuk membuat tilemaplayer dengan spawner sebagai rintangan. Saya juga mencoba membuat camera yang dapat mengikuti pergerekan character. 

#### Pada bagian latihan mandiri, saya membuat level baru dengan tema "sand" dan spawn berupa "worm". Saya juga mengimplementasikan double jump agar character dapat melewati berbagai rintangan. 

### Fitur yang Diimplementasikan
1. Tile Map Baru
2. Spawner Rintangan dengan Objek Berbeda
3. Rintangan Jurang & Objek Berjatuhan

### Proses Implementasi

1. Membuat Tile Map Baru

- Menggunakan tileset berbeda dengan menyesuaikan tema yang diinginkan.

- Menyusun ulang layout level agar memiliki tantangan unik.

2. Menambahkan Spawner Rintangan

- Membuat node Node2D sebagai spawner.

- Menggunakan Timer untuk menentukan waktu kemunculan rintangan.

- Menggunakan RandomNumberGenerator untuk menentukan posisi spawn.

3. Implementasi Jurang dan Objek Berjatuhan

- Menambahkan area kosong sebagai jurang dengan Area2D.

- Membuat objek jatuh menggunakan RigidBody2D.

- Menggunakan Timer untuk mengontrol interval jatuhnya objek.
