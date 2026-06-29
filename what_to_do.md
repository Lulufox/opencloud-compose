Пошаговая инструкция обновления

1. Спулливаем образ, предоставляемый разработчиками
```bash
docker pull opencloudeu/opencloud
```
2. Упаковываем образ в tar
```bash
docker save -o *путь, куда сохранить*/opencloud_latest_image.tar opencloudeu/opencloud
```

3. Забираем .tar файл и переносим образ в банковский контур
🪄 ✨✨✨✨