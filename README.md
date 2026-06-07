# Novaread
[![Made for Linux](https://img.shields.io/badge/Made%20for-Linux-blue?logo=linux&logoColor=white)](https://www.linux.org/)
Novaread (ранее nvfsys) - легкий аналог fastfetch, основанный на базе lua на одном файле.
## Превью
![Демонстрация](https://github.com/vidasik/novaread/blob/main/demo-update.png?raw=true)
Имеет только 4 модуля: Операционка, хост, оболочка и оконник. Вместо логотипа вашего дистрибутива красуется логотип novafetch (сокр. nvf).
## Установка
Установка Lua:
``` bash
# Arch Linux / Arch-based
sudo pacman -S lua
# Debian
sudo apt install lua5.3
# Fedora
sudo dnf install lua
``` 

Клонирование репозитория:
``` bash
git clone https://github.com/vidasik/novaread.git && cd novaread
``` 
Копирование скрипта:
``` bash
cp main.lua ~/novaread.lua
``` 
Запуск:
``` bash
lua novaread.lua
```
### Способ AUR
``` bash
yay -S novaread
```
## Примечание
Следите за обновлением в [Telegram](https://t.me/ayoneflnx).

