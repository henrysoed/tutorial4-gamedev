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

---
# Tutorial 6

Pada tutorial 6 ini, saya telah mempelajari cara membuat tampilan menu utama, game over screen, dan in-game GUI menggunakan Godot. Dengan memanfaatkan berbagai jenis Container seperti MarginContainer, VBoxContainer, dan HBoxContainer, saya dapat menyusun elemen UI dengan rapi. Selain itu, saya juga telah menambahkan Label, Button, serta TextureRect untuk mempercantik tampilan menu.

Saya telah mengimplementasikan fitur life counter menggunakan variabel global agar nyawa pemain tetap tersimpan meskipun scene di-reload. Life counter ini ditampilkan dalam GUI menggunakan Label yang diperbarui setiap frame. Saat nyawa pemain habis, game akan menampilkan layar game over dengan tampilan khusus menggunakan ColorRect dan Label.

Terakhir, saya menambahkan interaksi pada tombol menu utama sehingga pemain dapat memulai permainan dari Level 1. Dengan memanfaatkan signal pressed(), tombol dapat mengganti scene secara dinamis. Semua elemen ini membuat tampilan game menjadi lebih interaktif dan informatif bagi pemain.

## Fitur yang Diimplementasikan

1. Layer Game Over dengan Link Button untuk Kembali ke Menu Utama
2. Fitur Select Stage untuk Level 1 dan Level 3
3. Layar Efek Transisi antar Level
4. Pause Menu yang Muncul saat Menekan ESC

## Latihan Mandiri

### 1. Layer Game Over dengan Link Button

- Membuat scene baru untuk layer game over dengan `CanvasLayer` sebagai node utama.
- Menambahkan `LinkButton` yang terhubung ke menu utama.
- Mengimplementasikan script pada button untuk kembali ke menu utama:

```gdscript
func _on_pressed() -> void:
    get_tree().change_scene_to_file(str("res://scenes/MainMenu.tscn"))
```

### 2. Fitur Select Stage

- Modifikasi menu utama untuk menambahkan tombol pemilihan level.
- Membuat logic untuk memungkinkan pemain memilih level 1 atau level 3.
- Menggunakan metode `change_scene_to_file()` untuk berpindah ke level yang dipilih.

### 3. Layar Efek Transisi

- Membuat scene transisi ([scenes/Transition.tscn](d:\Universitas\Semester%206\GameDev\tutorial6-gamedev\scenes\Transition.tscn)) yang muncul setelah level selesai.
- Menambahkan link button dengan text "Lanjut ke Level Selanjutnya".
- Mengimplementasikan koneksi signal untuk tombol transisi:

```gdscript
func _on_pressed() -> void:
    # Menentukan level berikutnya berdasarkan level saat ini
    var current_level = get_tree().current_scene.name
    var next_level = ""
    
    if current_level == "Stage1":
        next_level = "res://scenes/Stage2.tscn"
    elif current_level == "Stage2":
        next_level = "res://scenes/Stage3.tscn"
    
    get_tree().change_scene_to_file(next_level)
```

### 4. Implementasi Pause Menu

- Membuat scene pause menu dengan `Control` node untuk menampilkan UI saat game di-pause.
- Mengimplementasikan tombol Main Menu dan Restart dengan koneksi signal:

```gdscript
extends Control

func _ready():
    $Resume.pressed.connect(_on_mainmenu_pressed)
    $Restart.pressed.connect(_on_restart_pressed)

func _on_mainmenu_pressed():
    get_tree().paused = false 
    get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")

func _on_restart_pressed():
    get_tree().paused = false  
    get_tree().change_scene_to_file("res://scenes/Level1.tscn")
```

- Menambahkan tombol untuk melanjutkan game, kembali ke menu utama, dan keluar dari game.

## Referensi

1. https://docs.godotengine.org/en/3.1/getting_started/step_by_step/ui_game_user_interface.html
2. https://docs.godotengine.org/en/3.1/getting_started/step_by_step/ui_main_menu.html