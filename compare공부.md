# cmp_to_key()란
 - key는 보통 .sort()나 sorted()를 사용할 때 그 안에서 정렬조건으로 넣는 key를 말한다. 
 - 일반적으로는 lambda를 사용한다.
 - cmp는 compare 함수를 의미한다. 
 
### 예시)
def compare(x, y):     
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if x+y > y+x:   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif x+y == y+x:  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 1
 - x와 y가 '3'과 같이 str화 되어있는 숫자일 때를 감안한 compare함수이다. 
 - return -1의 의미는 앞서서 들어온, 여기서는 x가 되겠는데 이 x가 y보다 앞에 정렬된다는 것이다. 
 - return 0 은 순서가 변하지 않는 것이고, return 1은 y가 앞서서 정렬된다는 의미이다.

##### 즉, 정리하자면 아래와 같다.
 - return 음수 : 먼저 들어온 요소가 앞으로 정렬됨
 - return 0 : 바뀌지 않음
 - return 양수 : 나중에 들어온 요소가 앞으로 정렬됨(먼저들어온 요소보다 앞에 배치됨)

### Sorting에서의 활용
from functools import cmp_to_key   
l = ['34', '37', '9', '31', '3']   
return sorted(l, key=cmp_to_key(compare))
 - 이 결과는 ['9', '37', '34', '3', '31']이 return된다.

 - 살짝만 뜯어보면 '9'와 '37'의 경우 '937' > '379'이기 때문에 9가 먼저 오는 것이고, '31'와 '3'의 경우 '313'<'331'이기에 순서가 바뀌어서 '3'이 '31' 보다 먼저오게 되는 것이다.

##### cmp_to_key를 활용해서 자신만의 조건에 따라 sorting 가능하게 할 수 있다.