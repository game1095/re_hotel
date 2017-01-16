# README
ไฟล์อธิบายเกี่ยวกับการ set up project , การติดตั้งไปยัง heroku และ link ไป heroku

## การ setup project
1. เปิด terminal หรือ command line ขึ้นมา 
2. เปิด directory ที่ต้องการ
3. git clone https://github.com/game1095/re_hotel.git
4. bundle install
5. rake db:migrate 
6. rails s
7. เข้าไปที่ http://localhost:3000/ เพื่อรันโปรเจคใน localhost

## การติดตั้งไปยัง heroku
1. - Create a group production in GemFile
     ```
     group :production do
      gem 'pg'
      gem 'rails_12factor'
    end
    ```
2. bundle install
3. git commit -m 'make app production rdy'
4. พิม heroku login ใน command line
5. พิม heroku keys:add ใน command line
6. พิม heroku create ใน command line
7. พิม git push heroku master ใน command line 
8. พิม git open เพื่อเปิดหน้าเว็บขึ้นมา

## ลิ้งค์ไปยัง heroku
[link to heroku click here](https://glacial-falls-28963.herokuapp.com/)

## การใช้งาน
1. Manager ล็อคอินเข้าสู่ระบบ หรือ สมัครสมาชิกเพื่อเข้าสู่ระบบ
2. Manager สามารถกดเพิ่ม employee เข้ามาได้จากหน้า Employee page
3. Manager สามารถกดเพิ่มห้องได้จากหน้า Room reservation
4. Manager สามารถเพิ่มการจองห้องโดยการกดปุ่ม Book ของแต่ละห้อง 
5. หลังจากกด book แล้ว manager สามารถเพิ่ม ข้อมูลของลูกค้าที่จองห้องนั้นๆได้
