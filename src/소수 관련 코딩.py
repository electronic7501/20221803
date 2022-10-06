## n 이하의 소수 리스트 만들기

# n = 10000

# a = [False,False] + [True]*(n-1)
# primes = []

# for i in range(2,n+1):
#   if a[i] :
#     primes.append(i)
#     for j in range(2*i,n+1,i):
#       a[j] = False



## 전체 리스트, 소수만 True

m = int(input())
n = int(input())

list = [True] * (n+1) #일단 모든수가 소수라고 가정하고 리스트를 사용해 모두 True로 설정해준다
list[1] = False #1은 소수가 아님으로 일단 False 

for i in range(2,int(n**0.5)+1): #2부터 입력받은 최대값의 제곱근까지 반복한다
  if list[i] == False: # 만약 현재 숫자가 이전의 배수로 제외된 값이라면 패스 
    continue 
  else: # 현재 숫자가 소수라면 
    j=2
    while i*j <= n:
      list[i*j] = False 
      j+=1 
   #현재 소수의 모든 배수는 소수가 아님으로 False로 바꿔줌 

sum = 0
 
for i in range(m,n+1): #입력받은 m~n까지 반복 
  if list[i]: #만약 현재 인덱스 값이 True라면 즉 소수라면 
    if sum == 0: #만약 sum이 0이라면 지금 들어온 소수가 제일 첫번째 소수임으로 
      min = i #이 소수는 범위내에서의 가장 작은 소수임으로 min으로 설정 
    sum +=i #현재의 인덱스를 sum 변수에 더해줌 
    
  
if sum != 0:
  print(sum)
  print(min)

else:
  print(-1)
