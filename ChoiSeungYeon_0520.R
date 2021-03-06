#
# ChoiSeungYeon
# 작성일 5/20일
# 제출일 5/20일



# 문1) 다음은 직장인 10명의 수입과 교육받은 기간을 조사한 자료이다.
#      산점도와 상관계수를 구하고, 
#      수입과 교육기간 사이에 어떤 상관관계가 있는지 설명하시오.

#     수입 	 121 99 41 35 40 29 35 24 50 60
#     교육기간 19  20 16 16 18 12 14 12 16 17
income <- c(121,99,41,35,40,29,35,24,50,60)
period <- c(19,20,16,16,18,12,14,12,16,17)
plot( income, period,
      main = "수입-교육기간 그래프",
      xlab = "수입",
      ylab = "교육기간",
      pch = 19 )
cor(income,period)
# 수입이 높을수록 교육받은 시간이 길었다.
# 교육기간이 길을수록 수입이 높았다.




# 문2) 다음은 대학생 10명의 성적과 주당 TV 시청시간을 조사한 자료이다. 
#      산점도와 상관계수를 구하고, 
#     성적과 TV 시청시간 사이에 어떤 상관관계가 있는지 설명하시오.

# 성적 	 77.5 60 50 95 55 85 72.5 80 92.5 87.5
# 시청시간 14   10 20  7 25  9 15   13  4   21
grade <- c(77.5,60,50,95,55,85,75.5,80,92.5,87.5)
wh <- c(14,10,20,7,25,9,15,13,4,21)
plot( grade, wh,
      main = "성적-TV시청 그래프",
      xlab = "성적",
      ylab = "시청시간",
      col="red",
      pch = 19 )
cor(grade,wh)
# 성적이 높을수록 TV 시청시간은 적었다.





# 문3) R에서 제공하는 mtcars 데이터셋에서 mpg와 
#     다른 변수들 간의 상관계수를 구하시오. 
#  어느 변수가 mpg와 가장 상관성이 높은지 산점도와 함께 설명하시오.
mpg <- mtcars$mpg
vars <- c(mtcars[,2:11])
cor( mpg,mtcars[ , 2:11 ] )
target <- mtcars[ , 1:11 ]

pairs( target, main = "multi plots" )
#mpg와 wt가 가장 상관성이 높다.
#가장 선형을 이루고 산점도가 -0.8676594로 -1에 가장 가까움 





# 문4) 다음은 2015년부터 2026년도까지의 예상 인구수 추계자료이다.
#      연도를 x축으로 하여 선그래프를 작성하시오.

#연도		총인구 (천명)		연도		총인구 (천명)
#2015		51014				2021		52123
#2016		51245				2022		52261
#2017		51446				2023		52388
#2018		51635				2024		52504
#2019		51811				2025		52609
#2020		51973				2026		52704
year <- c(2015,2016,2017,2018,2019,2020,2021,
          2022,2023,2024,2025,2026)
people <- c(51014,51245,51446,51635,51811,51973,52123,52261,
            52388,52504,52609,52704)
plot( year,                   # x data
      people,                    # y data
      main = "인구수",    # 제목
      type = "o",              # 그래프 종류, l, b, s, o
      lty = 1,                 # 선의 종류
      lwd = 1,                 # 선의 굵기
      xlab = "year",          # x축 레이블
      ylab = "people" )      # y축 레이블








# 문5) 도로교통공단 시도 시군구별 월별 교통사고.csv
#      파일에 대한 EDA를 수행하시오.

#방법1
data.file <- file.choose()
data.file
data <- read.csv("C:\\Workspace\\WorkspaceR\\도로교통공단_시도_시군구별_월별_교통사고(2018).csv")
data

class( data )
dim( data )
str( data )
head( data )



#방법2
setwd( "C:\\WorkspaceBigDaejeon\\WorkspaceR" ) # 파일 저장 경로 설정
df <- read.csv( file = "도로교통공단_시도_시군구별_월별_교통사고(2018).csv",
                header = T )




