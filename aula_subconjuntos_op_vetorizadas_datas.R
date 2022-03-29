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

#colunas foo e bar
d <- data.frame (foo = 6.8, bar = c(T, F, T))
d

#abreviação
d$f

#não funciona se não especificar busca não exata explicitamente
#NULL
d[["b"]]

#Busca não exata
#TRUE FALSE TRUE
d[["bar", exact = F]]

#foo bar
names(d)

#adiciona uma coluna ao dataframe chamada quiz
d$quiz <- c ("cat", "dog", "rat")
d
#troca o nome da coluna foo para tmp
names(d)[names(d) == "foo"] <- "tmp"
d


#os operandos das operações mencionadas são vetores
3 + 4
a <- 1:5;a
a + 10
a - 3
3 * a
a / 4
4 / a
a
a ^ 2
2 ** a
2 ^ a
a %% 4
a %/% 4
a %/% 2
##################################
3 > 4
a
a > 4
#############################3
a != 3
 1 < a
a 
a == 2
a >= 0
(a ^ 2) > 10
#T, T, T, F, F
a < 4

#T é tratatdo com 1
#F é tratado como zero
#2, 2, 2, 1, 1
2 ^ (a < 4)

2 ^ F
2 ^ T
4 ^ T
a ^ T

#####################################333
b <- c (T, F, F, T, F, T, F); b
c <- c(F, F, T, T, T, F, F); c

#ou sem curto circuito
#vai mostrar um resultado para cada elemento do vetor
b | c
#e sem curto circuito
b & c

#e se vetores tiverem tamanhos diferentes?
#se o maior for multiplo do menor, o menor vai sendo reaplicado
c(T, F) & c(T, T, T, F)

#se nao for multiplo da erro
#erro
c (T, F) & c (T, F, T)

!b

#observe como a versão curto circuito olha apenas para o primeiro elemento dos vetores
#true
c (T) && c (T)
#false
c(T) && c(F)
#true
c(T) || c(T)
#true
c(T) || c(F)
#false
c(F) || c(F)

#true
c(T, T) && c(T, T)
#true
c(T, F) && c(T, T)

#true
c(T, F) || c(T, F)

#false
c(F, T) || c(F, T)

b
c
#False (olha só para o primeiro, lembre-se)
b && c

#true
b || c

#true
#pouco importa o tamanho, portanto
c(T, F) && c (T, T, T)

#OBS: Dado o funcionamento dos operadores || e &&, a documentação sugere que sejam usados em estruturas de seleção ou repetição

#teste nem existe. Mas tudo bem, pq o lado direito sequer é avaliado
#já que o primeiro elemento de b é TRUE
b || (teste > 0)

#agora sim dá erro, já que o primeiro elemento de b é true
# e para concluir o && precisa olhar do outro lado
b && (teste > 0)
##################################################
x <- c(T, F, NA)
names (x) <- c("TRUE", "FALSE", "NA"); x

#matriz mostrando todas as combinações
outer(x, x, "&")

outer (x, x, "|")

!x
outer (x, x, "==")
#NA é "curioso"
#NA
NA == NA

#NA
!NA
#############################################
#vetores e matrizes
a <- 1:4
b <- 5:8

c <- 3:4

#vetores têm de ter tamanho igual ou o maior tem de ser múltiplo do menor
a / b
a / c

#erro
c(1, 2) / c(1, 2,3)

a + b

b <- 5:8
c <- 3:4
d <- 2:4

b * c
2 / d
#matrizes
#por padrão, de cima para baixo, da esquerda para a direita
x <- matrix (1:4, nrow = 2, ncol = 2);x

y <- matrix(10, nrow = 2, ncol = 2); y
y - x

x
y
#mutiplicação elemento a elemento
x * y

#multiplicação de matrizes
#x = [1, 3]
#x = [2, 4]
#y = [10, 10]
#y = [10, 10]

#linha 1 de x pela coluna 1 de y
#linha 1 de x pela coluna 2 de y
#linha 2 de x pela coluna 1 de y
#linha 2 de x pela coluna 2 de y
#x %*% y = [1 * 10 + 3 * 10, 1 * 10 + 3 * 10]
#x %*% y = [2 * 10 + 4 * 10, 2 * 10 + 3 * 10]

x %*% y
###############################