# 최승연
# 작성일 : 5월14일
# 제출일 : 5월 14일

# 문1)
#>score
#m  f
#[1,] 10 21
#[2,] 40 60
#[3,] 60 70
#[4,] 20 30

# 1. 위와 같은 내용의 matrix score를 생성
score <- matrix( c(10,40,60,20,21,60,70,30), nrow=4, ncol=2)
score
# 2. score의 열 이름을 각각 male, female로 바꾸시오
colnames(score) <- c('male','female')
score
# 3. 2행에 있는 모든 값을 출력
score[2, ]
# 4. female의 모든 값을 출력
score[ ,2]
# 5. 3행 2열의 값을 출력
score[3,2]




# 문2) R에서 제공하는 state.x77 데이터셋을 이용하여 작성

# 1. state.x77을 변환하여 st에 data frame으로 작성
st <- data.frame(state.x77)
# 2. st의 내용을 출력
class(st)
# 3. st의 열 이름 출력
colnames(st)
# 4. st의 행 이름 출력
rownames(st)
# 5.st의 행의 개수와 열의 개수 출력
dim(st)
# 6. st의 요약 정보 출력
str(st)
# 7. st의 행별 합계와 평균 출력
rowSums(st)
rowMeans(st)
# 8. st의 열별 합계와 평균 출력
colSums(st)
colMeans(st)
# 9. Florida 주의 모든 정보 출력
st["Florida",]
# 10. 50개 주의 수입(Income) 정보만 출력
st[,"Income"]
# 11. Texas 주의 면적(Area)을 출력
st["Texas","Area"]
# 12. Ohio 주의 인구(Population)와 수입(Income) 출력
st["Ohio", c("Population","Income")]
# 13. 인구가 5,000 이상인 주의 데이터만 출력
st["Population">5000]
# 14. 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력
st["Income">4500, c("Population","Income","Area")]
# 15. 수입이 4,500 이상인 주는 몇 개인지 출력
table(st["Income"]>4500)
# 16. 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보 출력

# 17. 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12미만인 주의 정보 출력

# 18. 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인지 출력
st["Illiteracy">2.0, "Income"]
# 19. 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이 출력

# 20. 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력
max(st[,"Life.Exp"])
# 21. Pennsylvania 주보다 수입(Income)이 높은 주들 출력
st[,"Income">st["Pennsylvania","Income"]]



# 문3)
#R에서 제공하는 mtcars 데이터셋은 자동차 모델에 대한 제원 정보를 담고 있다.

# 1. 이 데이터셋의 자료구조 출력
mtcars
# 2. 이 데이터셋의 행의 개수와 열의 개수 출력
dim(mtcars)
# 3. 이 데이터셋 열들의 자료형 출력
ncol(mtcars)
# 4. 연비(mpg)가 가장 좋은 자동차 모델 출력

# 5. gear가 4인 자동차 모델 중 연비가 가장 낮은 모델 출력

# 6. Honda Civic의 연비(mpg)와 gear 수 출력

# 7. Pontiac Firebird 보다 연비가 좋은 자동차 모델 출력

# 8. 자동차 모델들의 평균 연비 출력

# 9. gear의 수 종류 출력



















