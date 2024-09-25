
#простейшее решение задачи по проверке правильности написания скобок в строке

# 1 способ
def main():
    str = '()()'
    counter = 0
    flag = False

    for i in range(len(str)):
        if str[i] == '(':
            counter += 1
        else:
            counter -= 1
        if counter < 0:
            flag = True
            break

    if counter != 0:
        flag = True

    if flag:
        print('incorrect')
    else:
        print('correct')

# 2 способ
def vars():
    global str, counter, i, ch

def error():
    flag = False

def read_ch():
    i = i+1
    ch = str[i]

def A():
    if ch == '(': read_ch() 
    else: error()
    while ch == '(':
        A()
    if ch == ')': read_ch()
    else: error()
    while ch == '(':
        A()

def main1():
    vars()
    str = '()()0'
    i = 0
    flag = False
    read_ch()
    str += '@'
    while not(flag) and (ch[i] != '@'):
        A()
    if flag:
        print('incorrect')
    else:
        print('correct')

if __name__ == '__main__':
    main1()