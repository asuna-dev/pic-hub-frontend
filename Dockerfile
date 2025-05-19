# 使用官方 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 将构建好的前端项目复制到Nginx的默认目录中
COPY ./dist /usr/share/nginx/html

# 可选：修改Nginx默认配置来解决跨域问题
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80