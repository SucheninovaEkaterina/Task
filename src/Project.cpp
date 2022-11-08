#include "ThreadPool.h"
#include <iostream>
#include <chrono>
int global = 1;
// Задача : поиск факториала 
void TestTask1()
{
    double sum = 1;
    for (double i = 1; i <= global; i++) {
        sum = sum * i;
    }
    std::cout << sum<<"\n";
}
// Задача: поиск двойного факториала 
void TestTask2()
{
    int n = global;
    int f = 1;
    if (n % 2 == 0)
    {
        for (int i = 2; i <= n; i += 2)
            f *= i;
    }
    else
    {
        for (int i = 1; i <= n; i += 2)
            f *= i;
    }
    std::cout << f << "\n";
}

int main()
{
    // Ввод кол-ва потоков
    int n;
    std::cout << "Enter the number of threads: ";
    std::cin >> n;
    // Ввод параметра для задачи
    std::cout << "Enter the task parameter: ";
    std::cin >> global;
    ThreadPool pool(n);
    for (int i = 0; i < 10; i++)
       {
           pool.AddTask(TestTask2);
       }
    //Удаление 3 задачи по индексу
     pool.DelTask(3);
}
