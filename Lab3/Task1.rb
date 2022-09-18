#V6
A = false
B = false
C = false

X = -8
Y = -10
Z = -12

def first_task
  printf("a) !(A  B)  (A  !B): #{!(A || B) && (A && !B)}\n")
  printf("b) (Z != Y) ≤ (6 ≥ Y)  A  B  C  X ≥ 1.5: #{(Z != Y).object_id <= (6 >= Y).object_id && A || B && C && X >= 1.5}\n")
  printf("c) (8 – X * 2 ≤ Z)  (X^2 <= Y^2))  (Z ≥ 15): #{(8 - X * 2 <= Z) && (X ** 2 <= Y ** 2) || (Z >= 15)}\n")
  printf("d) X > 0  Y < 0  Z ≥ (X*Y + (–Y/X))+(–Z): #{X > 0 && Y < 0 || Z >= (X * Y + (-Y / X)) + (-Z)}\n")
  printf("e) !(A  B  !(C  (!A  B))): #{!(A || B && !(C || (!A || B)))}\n")
  printf("f) X^2 + Y^2 ≥ 1  X ≥ 0  Y ≥ 0: #{X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0}\n")
  printf("g) (A  (C  B <> B  A)  C)  B: #{(A && (C && B != B || A) || C) && B}\n")
end

first_task()

P = true
x = -0.5

def second_task
  n = -2
  m = 1
  printf("\n не(exp(2*x) >3.1415/3) и не P: #{!(Math.exp(2*X)>Math::PI/3) && !P}")
end

second_task()