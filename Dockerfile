FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# 作者信息
LABEL maintainer="jim.xu"

# 安装系统依赖和 Node.js（ExecJS 用）
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    curl gnupg \
    locales \
    imagemagick \
    ruby-full \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert \
    inotify-tools \
    procps \
    nodejs npm \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 设置 UTF-8 本地语言支持
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 JEKYLL_ENV=production

# 安装 jekyll 和 bundler
RUN gem install jekyll bundler

# 添加项目代码
WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock ./

# 安装依赖
RUN bundle install

# 复制 Jekyll 项目文件（可以换成 ADD）
COPY . .

# 开放端口
EXPOSE 8080

# 入口脚本（可选）
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "8080", "--livereload"]