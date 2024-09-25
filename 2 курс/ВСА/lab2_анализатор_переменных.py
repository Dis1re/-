"""
<оператор> = if <условие> then <действие> [else <действие2>]
<условие> - {логические высказывание}
<действие> = <оператор> / <выражение>
возможна рекурсия при вызывании опреатор в действии
<выражение> = $$$
<логическое выражение> = L(Tn;Nn;Sn;Pn)
T = {<переменная>;and;or;not;(;)}
"""

"""
анализатор имен переменных
T+ = {'a'...'z', 'A'...'Z', '0'...'9', '_', e } словарь терминальных симоволов
N = {'A1'...'Z1'} - словарь нетерминальныъ символов
L(T+;N;S1;P1)

P1: V1 ->буква ->  ->  ->  ->  ->  ->
                    ^ <- буква <- v  
                    ^ <- цифра <- v
                    ^ <-  '_'  <- v 
если ты способен правильно нарисовать стрелочки и кружочки, то можно сделать    
"""

def initVar():
    global ch, i, flag, s


def read_ch():
    global i, ch
    i += 1
    ch=s[i]


def error():
    global flag
    flag=True

def V1():
    global ch, i, s, flag

    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
               'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


    if ch in letters:
        read_ch()
    else:
        error()

    while ch in letters or ch in numbers or ch == '_':
        if ch in letters: read_ch()
        else: error
        if ch in numbers: read_ch()
        else: error
        if ch == '_': read_ch()
        else: error

def main():
    initVar()
    global ch, i, s, flag
    s = 'memo1' + '@'
    flag = False
    i = 0
    read_ch()
    while  not flag and ch != '@': V1()
    if flag:
        print('ошибка')
    else: 
        print('верно')

main()