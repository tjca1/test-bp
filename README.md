<br>Projeto Spring-Boot 2.x c
<br>    - Spring Data 
<br>    - Spring Security 
<br>    - Swagger 
<br>    - Git 
<br>    - Flyway
<br>    - Confis:
<br>sudo apt-get update                                                                                                
<br>sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common                        
<br>sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -                                  
<br>sudo apt-key fingerprint 0EBFCD88                                                                                  
<br>sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\"  
<br>sudo apt-get update                                                                                                
<br>sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu                                                            
<br>docker run -d --name projeto-test-bp-container -p 8888:30001 tjca1/projeto-spring-boot-bp:1.0.1
<br>
<br>                 
<br>http://hostname:porta/swagger-ui.html
<br>
<br>[GET - POST - PUT - DELETE]
<br>http://hostname:porta/rest/categorias
<br>http://hostname:porta/rest/clientes
<br>http://hostname:porta/rest/pedidos
<br>http://hostname:porta/rest/produtos
<br>
<br>Obs, para acessar as apis configure o head da requisição:
<br>authorization   :   Token eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0ZV9icmFzaWxfcHJldiIsInVzZXJJZCI6IjEyMzQ1NiIsInJvbGUiOiJhZG1pbiJ9.D2W_KS4kZ796scobO5Bw88-BgcPNUcSvCYFjq6Ig8lptCXp9NyV9T43mehJEWnUkln5n58YOrIW7xHBYKiETIA
<br>Content-Type    :   application/json
![image](https://user-images.githubusercontent.com/28515964/55062909-9bedb580-5055-11e9-9a76-4084b0590b33.jpg)

IMAGE DOCKER
![image](https://user-images.githubusercontent.com/28515964/55063120-0f8fc280-5056-11e9-9709-e4daf3ed0d54.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370302-6bcc6980-54d0-11e9-8ce6-5fc7359232ac.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370336-8acafb80-54d0-11e9-9340-72bf884a4a23.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370362-a209e900-54d0-11e9-895d-bc9c8a03cb3f.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370383-b948d680-54d0-11e9-892f-bc7d88e9bcf5.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370447-dc738600-54d0-11e9-90ac-c14fb157041c.jpg)
![image](https://user-images.githubusercontent.com/28515964/55370474-f745fa80-54d0-11e9-9851-35702e917e14.jpg)


