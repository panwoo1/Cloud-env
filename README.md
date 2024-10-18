# Cloud-env
클라우드 구축 가이드
![로고2](https://github.com/seoyounglee0105/green_airline_project/assets/106488607/45885ada-932d-4640-93a8-4a84d451bb9c)




<br>

## 🚀 프로젝트 개요
- 해당 프로젝트는 기존의 오픈소스를 바탕으로 취약점 진단 및 모의해킹을 진행하기 위해 일부 기능을 더 보안에 취약하게 수정한 프로젝트입니다.
-   원래의 오픈소스 URL : https://github.com/seoyounglee0105/green_airline_project.git
- 프로젝트 기간 : 2024년 8월 31일 ~ 


<br> 



## 1️⃣ 프로젝트 구조

<details>
    <summary>⚡️ 구조 자세히 살펴보기</summary>
    
    📦src
     ┗ 📂main
       ┣ 📂java
       ┃ ┗ 📂com
       ┃   ┗ 📂green
       ┃     ┗ 📂airline
       ┃       ┃ ┣ 📂config
       ┃       ┃ ┗ 📂controller
       ┃       ┣ 📂dto
       ┃       ┃ ┣ 📂kakao
       ┃       ┃ ┣ 📂nation
       ┃       ┃ ┣ 📂request
       ┃       ┃ ┗ 📂response
       ┃       ┣ 📂enums
       ┃       ┣ 📂handler
       ┃       ┃ ┗ 📂exception
       ┃       ┣ 📂repository
       ┃       ┃ ┣ 📂interfaces
       ┃       ┃ ┗ 📂model
       ┃       ┣ 📂service
       ┃       ┗ 📂utils
       ┣ 📂resources
       ┃ ┣ 📂db
       ┃ ┣ 📂mapper
       ┃ ┗ 📂static
       ┃   ┣ 📂css
       ┃   ┃ ┗ 📂summerNote
       ┃   ┃   ┗ 📂font
       ┃   ┣ 📂images
       ┃   ┃ ┣ 📂airplane
       ┃   ┃ ┣ 📂baggage
       ┃   ┃ ┣ 📂board
       ┃   ┃ ┣ 📂gifticon
       ┃   ┃ ┣ 📂in_flight
       ┃   ┃ ┣ 📂like
       ┃   ┃ ┣ 📂product
       ┃   ┃ ┗ 📂ticket
       ┃   ┗ 📂js
       ┃     ┗ 📂summerNote
       ┃       ┗ 📂lang
       ┗ 📂webapp
         ┗ 📂WEB-INF
           ┗ 📂view
             ┣ 📂baggage
             ┣ 📂board
             ┣ 📂faq
             ┣ 📂in_flight
             ┣ 📂layout
             ┣ 📂manager
             ┣ 📂mileage
             ┣ 📂myPage
             ┣ 📂notice
             ┣ 📂ticket
             ┣ 📂user
             ┗ 📂voc

    
</details>
    
<br>

## 2️⃣ 프로젝트 개요

* 프로젝트 목표 : 웹 취약점 진단 및 모의해킹
* 예약, 환불, 외부 API를 활용할 수 있는 항공권 예약 사이트
* 기존의 오픈소스에서 챗봇 기능을 추가


<br>

## 3️⃣ 기능 구분

#### Member

* 소셜 로그인 API, 항공권 예매 기능, 결제 및 환불 API
* 기내 서비스 조회 기능, 서비스 신청 기능, 여행일지 조회 기능
* 구글 맵 API, 마일리지 숍 구매 기능, 네이버 이메일 SMTP 프로토콜

#### Manager
* 대시보드 조회, 회원관리, 항공권 관리 및 조회, 서비스 신청 관리 및 조회
* 여행일지 관리 및 조회, 마일리지 숍 관리 및 조회, 고객센터 관리 및 조회

<br>


## 4️⃣ 환경구축 가이드
- <a href="https://github.com/hw20200500/green_airline_project/blob/main/%EC%9C%88%EB%8F%84%EC%9A%B0%20%ED%99%98%EA%B2%BD%EA%B5%AC%EC%B6%95%20%EA%B0%80%EC%9D%B4%EB%93%9C.pdf">윈도우 환경구축 가이드</a>
- <a href="https://github.com/hw20200500/green_airline_project/blob/main/%EB%A6%AC%EB%88%85%EC%8A%A4%20%ED%99%98%EA%B2%BD%EA%B5%AC%EC%B6%95%20%EA%B0%80%EC%9D%B4%EB%93%9C.pdf">리눅스 환경구축 가이드</a>
