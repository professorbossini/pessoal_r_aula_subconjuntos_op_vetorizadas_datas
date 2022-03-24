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

#vetor de booleanos, TRUE quando igual a zero
p <- (r == 0); p

#vetor de pares
pares <- n[p];
pares;

#vetor de booleanos, TRUE quando igual a 1
i <- (n %% 2 == 1)
i
#vetor de impares
impares <- n[i];
impares
#################################
#de cima para baixo, da esquerda para a direita
m <- matrix(nrow = 3, ncol = 4, data = 1:12);
m;
#linha 2 coluna 2
m[2,2]

#linha 1, coluna 3
m[1, 3]

#segunda linha
m[2, ]

#terceira coluna
m[,3]

#terceira coluna, não descartar (drop) a estrutura, mantendo o objeto como uma matriz
m[, 3, drop = FALSE]
m
#linhas 2 e 3, colunas 2 a 4
m[2:3, 2:4]

#linhas 1 a 3, colunas 2 e 4
m[1:3, c(2, 4)]
#############################################
#produz uma lista com quatro elementos nomeados
#eles podem ser acessados assim:
#x$nome
x <- list (
    foo = 1:4,
    bar = 0.6,
    msg = c('hello', "world"),
    quiz = list(5, 7, 3)
)

x$foo
x$bar
x$msg
x$quiz


#dá um vetor contendo o primeiro elemento de quiz
x$quiz[1]

#dá o primeiro elemento do vetor contendo o primeiro elemento de quiz
x$quiz[[1]]

#mostra foo: 1 2 3 4
x[1]

#mostra: 1 2 3 4
x[[1]]

#$bar: 0.6
x$bar

#$bar: 0.6
x["bar"]

#0.6
x[["bar"]]

#$foo: 1 2 3 4 $msg: hello world
x[c(1,3)]

#$quiz[[1]]: 5
#$quiz[[2]]: 7
#$quiz[[3]]: 3
x[4]

#[[1]]: 5
#[[2]]: 7
#[[3]]: 3
x[[4]]

#[[1]]: 7
x[[4]][2]
#7
x[[4]][[2]]

x
#world
x[[c(3, 2)]]

#NULL
x$name

#abreviação (primeiras letras)
#hello world
x$m
#hello world
x$ms

#1 2 3 4
x$f

#0.6
x$ba

#adicionando nova propriedade para mostrar ambiguidade no nome: foo e fruta começam com f
x <- c(x, list (fruta = "limão"))
x

#NULL
x$f

#limão
x$fr

#1 2 3 4
x$fo

#NULL (ambiguo)
x[["f"]]

#NULL, nao existe se a procura for exata
x[["fr"]]

#admite busca nao exata
x[["fr", exact = F]]

