x <- c("e", "b", "a", "d", "a", "f", "d");
x
#posição 1
x[1]
#posições de 2 a 4, exceto 4
x[2:4];
#todas as posições especificadas, na ordem de especificação
x[c(1, 4, 3, 6, 3)]

x <- c(3, 7, 4, 1, 6, 2, 1); x;

#todos, exceto  na posição 2
x[-2]

#todos exceto posições 3, 1 e 6
x[c(-3, -1, -6)]

#ordem não importa, aqui também temos todos, exceto posições 3, 1 e 6
x[c(-1, -3, -6)]


#####################################
# -3, -4, -5
-3:-5
#todos, exceto posições 3, 4 e 5
x[-3:-5]

x;

#devolve um vetor de booleanos
x > 2;

#somente aqueles em x que têm a propriedade especificada
x[x > 2]

#y vira um vetor de booleanos
y <- (x < 5)
y
x
#somente aqueles em x cujas respectivas posições em y têm true
x[y]

#1 a 10
n <- 1:10; n

#vetor de 0s e 1s, de acordo com a paridade de cada elemento em r
r <- n %% 2; r;

#vetor de booleanos
p <- (r == 0); p



