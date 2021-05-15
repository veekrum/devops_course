## Nginx Configuration examples

### Super Basic
```
events {}

http {
  server {
    listen 80;
    server_name _;
  }
}
```

### Multiple listening
```
events {}

http {
  server {
    listen 80;
    server_name _;
  }
  server {
    listen 8080;
    server_name _;
  }
}
```

### Multiple virutal hosts
```
events {}

http {
  # virtual host
  server {
    listen 80;
    server_name default_server;
  }

  # virtual host
  server {
    listen 80;
    server_name example.com;
  }
}
```


### Multiple virutal hosts
```
events {}

http {
  server {
    listen 80;
    listen [::]:80;
    server_name default_server;
  }
  server {
    listen 80;
    server_name example.com;
  }
}
```

### root_path
```
events {}

http {
  server {
    listen 80;
    server_name example.com;

    root /var/www/example.com;
    index index.html;

    location / {
      try_files $uri $uri/ =404;
    }

    location /data {
      root /var/www/example.com;
    }
  }

  server {
    listen 80;
    server_name example.com;
  }
}
```

### upstream
```
events {}

http {
  
  server {
    listen 80;
    server_name example.com;

    root /var/www/example.com;
    index index.html;

    location / {
      try_files $uri $uri/ =404;
    }

    location /data {
      root /var/www/example.com;
    }
  }

  upstream backend {
    server localhost:80;
  }

  server {
    listen 80;
    server_name example.com;
    location / {
      proxy_pass http://backend;
    }
  }

}
```


### Resources
#### Nginx sample config example
https://www.nginx.com/resources/wiki/start/topics/examples/full/

#### Nginx Directive list
http://nginx.org/en/docs/dirindex.html