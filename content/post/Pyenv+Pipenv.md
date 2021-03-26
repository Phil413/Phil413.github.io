---
title: "Pyenv + Pipenv 使用"
date: 2019-05-28T18:48:56+08:00
draft: false
summary: "使用Pyenv与Pipenv管理python虚拟环境"
tags: [python]
---
# Pyenv + Pipenv 使用

## Pyenv 安装

1. 直接执行命令 下载安装
curl -L <https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer> | bash

2. 环境变量配置
安装成功后，会提示如何配置环境变量
>   \# Load pyenv automatically by adding
    \# the following to ~/.bashrc:
    export PATH="/home/star/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

3. 安装好Pyenv 后，再使用Pipenv的时候就可以自动安装选择的python版本了，可以用pyenv install --list 查看可安装的版本

## Pipenv 安装与使用

### 安装： pip3 install pipenv --user

### 使用：

1. mkdir 一个新的目录, cd 到目录下, pipenv install --python 3.7, 就会创建python3.7的虚拟环境, 如果没有安装python3.7 会询问是否安装，直接y 安装就可以了
2. pipenv 会自动生成一个 Pipfile 的文件 里面可以配置 pip的源，阿里的pip源： https://mirrors.aliyun.com/pypi/simple

![avatar](https://raw.githubusercontent.com/Phil413/Phil413.github.io/images/img/pipenv1.png)

3. pipenv install package 可以直接安装 Python包，用法基本与pip相同，
4. Pipfile.lock 文件，pipenv install 会根据这个文件内容自动安装依赖，Pipfile.lock 在pipenv install的时候会自动更新
5. 开发依赖，pipenv install package --dev， 在新的开发环境中 可以 pipenv install --dev只安装 开发相关依赖
6. pipenv run 可以直接执行虚拟环境的命令，例：pipenv run python *.py
7. pipenv shell 进入虚拟环境

## Pycharm 中使用pipenv的虚拟环境

1. 打开settings 中的Project Interpreter， File | Settings | Project: project_name | Project Interpreter

    ![avatar](https://raw.githubusercontent.com/Phil413/Phil413.github.io/images/img/pipenv2_mosaic.png)



2. 点击小齿轮，选择 add local, 选择Existing environment, 输入pipenv shell 进入虚拟环境时显示的路径并将active替换成python

![avatar](https://raw.githubusercontent.com/Phil413/Phil413.github.io/images/img/pipenv4_mosaic.png)

![avatar](https://raw.githubusercontent.com/Phil413/Phil413.github.io/images/img/pipenv3_mosaic.png)