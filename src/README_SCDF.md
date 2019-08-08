### SCDF For Kubernetes 배포 가이드
## Timezone 설정!!!!!!
- 타임존을 설정해야 서울시로 운영할수 있다.

### MySQL
#### 개발환경
- 개발서버에서는 물리 Disk를 사용하지 않고 메모리로 관리를 해서 PV(물리적인 disk)를 사용하지 않고 배포를 할수있다.
- Password Management
  - `mysql-deployment.yaml`에서 입력
```yaml
spec:
 template:
  spec:
   containers:
    env:
     name: MYSQL_ROOT_PASSWORD
     value: yourpassword
     또는
     vlaueFrom:
      secretKeyRef:
       key: mysql-root-password
       name: mysql 
```
  - `mysql-secret.yaml` 파일에 base63인코딩이 된 패스워드를 설정해줘야한다.
```yaml
data:
 mysql-root-password: eW91cnBhc3N3b3Jk #base63Encoded('yourpassword')

```
##### 배포해야하는 yaml 
1. mysql-secret.yaml
2. mysql-deployment-dev.yaml
3. mysql-svc.yaml

#### 상용환경
- 상용환경에서는 PV를 연동해서 데이터를 저장해서 관리한다.
##### 배포해야하는 yaml 
1. 
2. 
3. 

-----
### Kafka
Stream의 message broker로 사용되고 특별한 변경없이 기본 세팅 그대로 사용함

### skipper
DataFlow Server로 부터 App등록, 배포, 롤백과 같은 기능들을 위임받아서 실제 Kubernetes에 명령을 수행하는 컴포넌트이다.
##### 배포해야하는 yaml 
1. skipper-config-kafka.yaml
2. 