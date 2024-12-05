#!/bin/bash

# Обновление пакетов и установка необходимых зависимостей
apt-get update -y
apt-get install -y git

# Переход в директорию /tmp
cd /tmp

# Клонирование репозитория faasd
git clone https://github.com/openfaas/faasd --depth=1

# Переход в директорию faasd
cd faasd

# Установка faasd
./hack/install.sh

# Установка faas-cli
curl -sSL https://cli.openfaas.com | sudo sh

# Вывод пароля для faas gateway-panel
sudo cat /var/lib/faasd/secrets/basic-auth-password
echo
