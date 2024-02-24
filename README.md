# App 사용자단 Backend
> AutoScailingGroup + CICD 설정

<br>

## AutoScailingGroup 생성
### 1 - 시작 템플릿 생성
<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/9040cd5d-95dd-45ca-aa08-637a6c4922bd" width=850 height=250>

1-1. 시작 템플릿 생성 -> 인스턴스에서 생성탭 클릭 

<br>

<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/330bbac8-3699-4e77-aaa3-4a816c56119e" width=500 height=400>

1-2. 시작 템플릿 생성 메뉴 中 -> 고급 설정 -> ASG Instance가 scail-out될 때 스크립트 내용 실행됨 (CodeDeploy Agent 설치)

<br>

### 2 - AutoScailingGroup 생성
<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/3b8a6d89-f871-49a7-87ef-bf36f9e15ab3" width=680 height=450>

2-1. 로드밸런서 Target Group과 ASG 연결

<br>

<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/8ab4fbfc-8836-428d-8d75-3a75657dac1e" width=950 height=280>

2-2. ASG 생성 화면

<br>

## CICD 구성
<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/1d158ffe-504a-48f8-8249-14a7295836e6" width=800 height=450>

- App 사용자단 2개의 백엔드 배포 그룹 각각 CICD 설정 -> 'ASG-Instance' 기준으로 진행과정 설명

<br>

<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/12286088-c5ac-4a4d-957c-4dfb0bb7929a" width=750 height=400>

- CodeDeploy 배포그룹 생성 시 -> ASG 지정하여 생성 -> 배포 그룹 생성 완료 화면

<br>

<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/00da6e67-6ee6-4392-b953-91e8ea10e80d" width=830 height=450>

- CICD 구조도 -> ASG-Instance scail-out시 자동으로 배포됨

<br>

<img src="https://github.com/kksung/ASG_CICD-AppUserBE/assets/110016279/9e6cfee5-ec57-401a-b877-1b6e2b23f50f" width=750 height=300>

- scail-out되었을 때, 5000번 포트로 백엔드 서버가 구동중인 것 확인 (배포 완료 확인!)
