# Path Planning

### 01. Path Planning
Path Planning : 목표 지점까지 이동하는 경로를 계획하는 과정. 최적의 경로를 계획하여 목표 지점까지 안전하고 빠르게 이동할 수 있도록 경로를 계획한다.

- Global Planning : 전체 Global Map 안의 출발 지점에서 도착 지점까지 갈 수 있는 수 많은 경로 중 하나의 경로를 선택하는 기술<br> EX) A* 알고리즘, Dijkstra 알고리즘 
- Local Path Planning : Local Map 안에서 주변 정보를 실시간으로 처리하는 기술

### A* Algorithm
주어진 출발 노드에서 목표 노드까지 가는 최단 경로를 찾아내는 그래프 탐색 알고리즘 중 하나이다. **Dijkstra 알고리즘**과 유사하나, 목표 노드 까지의 **휴리스틱 거리** (A 노드에서 B 노드까지 가는 예상 거리) 측정 값도 사용한다는 차이점이 있다.