#include "ThreadPool.h"
void ThreadPool::runThread() {
	while (!stop) {
		std::unique_lock<std::mutex> lock(mtx);
		if (!Tasks.empty()) {
			task_t task1 = Tasks.front();
			Tasks.pop();
			lock.unlock();
			task1();
		}
	}
}
void ThreadPool::DelTask(int id) {
	std::unique_lock<std::mutex> lock(mtx);
	if (id > Tasks.size() || id < 1) {
		std::queue<task_t> q;
		task_t t;
		int Count = Tasks.size();
		for (int i = 1; i < id;i++) {
			t = Tasks.front();
			q.push(t);
			Tasks.pop();
		}
		Tasks.pop();
		int count = Count - id;
		for (int i = 1; i <= count;i++) {
			t = Tasks.front();
			q.push(t);
			Tasks.pop();
		}
		std::swap(Tasks, q);
	}
	else {
		std::cout << "You cannot delete a task \n";
	}

}


void ThreadPool::AddTask(task_t task) {
	std::unique_lock<std::mutex> lock(mtx);
	//защита добавления элемента в очередь
	Tasks.push(task);
}

ThreadPool::ThreadPool(int countThreads) : stop(false) {
	//выделяем место для вектора
	setThreads.reserve(countThreads);
	for (int i = 0;i < countThreads;i++) {
		//создание объекта внутри вектора и вызов метода runThread, для получения задачи потоком
		setThreads.emplace_back(std::thread(&ThreadPool::runThread, this));
	}
}

ThreadPool::~ThreadPool() {
	for (size_t i = 0; i<setThreads.size();i++) {
		setThreads[i].join();// ожидание завершения
	}
}