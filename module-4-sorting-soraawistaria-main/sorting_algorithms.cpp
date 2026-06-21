#include "sorting_algorithms.h"
#include <algorithm>
#include <chrono>
#include <iostream>

using Clock = std::chrono::high_resolution_clock;

void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

//BUBBLE SORT

void bubble_sort(std::vector<int>& data, Metrics& m) {
    int n = data.size();
    auto start = Clock::now();
    m.comparisons = 0;
    m.swaps = 0;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (data[j] > data[j+1]) {
                swap(data[j], data[j+1]);
                m.swaps++;
            }
            m.comparisons++;
        }
    }

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}

// SELECTION SORT

void selection_sort(std::vector<int>& data, Metrics& m) {
    int n = data.size();
    auto start = Clock::now();
    m.comparisons = 0;
    m.swaps = 0;

    for (int i = 0; i < n-1; i++) {
        int minVal = i;
        for (int j = i+1; j < n; j++) {
            if (data[j] < data[minVal]) {
                minVal = j;
            }
            m.comparisons++;
        }
        swap(data[i], data[minVal]);
        m.swaps++;
    }

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}

// INSERTION SORT

void insertion_sort(std::vector<int>& data, Metrics& m) {
    int n = data.size();
    auto start = Clock::now();
    m.comparisons = 0;
    m.shifts = 0;

    for (int i = 0; i < n; i++) {
        int key = data[i];
        int j = i - 1;
        while (j >= 0 && data[j] > key) {
            data[j+1] = data[j];
            j--;
            m.comparisons++;
        }
        data[j+1] = key;
        m.shifts++;
    }

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}

// MERGE SORT

void merge(std::vector<int>& data, int left, int mid, int right, Metrics& m) {
    int n1 = mid - left +1;
    int n2 = right - mid;
    m.comparisons = 0;

    std::vector<int> L(n1), R(n2);

    for (int i = 0; i < n1; i++) {
        L[i] = data[left+i];
    }
    for (int j = 0; j < n2; j++) {
        R[j] = data[mid + 1 + j];
    }

    int i = 0, j = 0, k = left;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            data[k] = L[i];
            i++;
        } else {
            data[k] = R[j];
            j++;
        }
        k++;
        m.comparisons++;
    }

    while (i < n1) {
        data[k] = L[i];
        i++;
        k++;
    }

    while (j < n2) {
        data[k] = R[j];
        j++;
        k++;
    }
}

void mergeSort(std::vector<int>& data, int left, int right, Metrics& m) {
    m.comparisons = 0;
    m.recursive_calls = 0;
    if (left >= right) {
            m.comparisons++;
            return;
        }

        int mid = left + (right - left) / 2;
        mergeSort(data, left, mid, m);
        m.recursive_calls++;
        mergeSort(data, mid+1, right, m);
        m.recursive_calls++;
        merge(data, left, mid, right, m);
}

void merge_sort(std::vector<int>& data, Metrics& m) {
    auto start = Clock::now();

    mergeSort(data, 0, data.size()-1, m);

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}

// QUICK SORT

int partition(std::vector<int>& data, Metrics& m, int low, int high) {
    int pivot = data[high];
    int i = low - 1;
    int swap_cnt = 0;
    

    for (int j = low; j <= high - 1; j++) {
        if (data[j] < pivot) {
            i++;
            swap(data[i], data[j]);
            swap_cnt++;
        }
    }

    swap(data[i + 1], data[high]);
    swap_cnt++;
    m.swaps += swap_cnt;
    return i + 1;
}

void quickSort(std::vector<int>& data, Metrics& m, int low, int high) {
    int comp_cnt = 0;
    int rc_cnt = 0;
    if (low < high) {
        int parti = partition(data, m, low, high);
        comp_cnt++;

        quickSort(data, m, low, parti-1);
        rc_cnt++;
        quickSort(data, m, parti+1, high);
        rc_cnt++;

        m.recursive_calls += rc_cnt;
    }
    m.comparisons += comp_cnt;
}

void quick_sort(std::vector<int>& data, Metrics& m) {
    auto start = Clock::now();

    quickSort(data, m, 0, data.size()-1);

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}

// COUNT && RADIX SORT

int getMax(std::vector<int>& data, int n) {
    int max = data[0];
    for (int i = 0; i < n; i++) {
        if (data[i] > max) {
            max = data[i];
        }
    }
    return max;
}

void count_sort(std::vector<int>& data, Metrics& m, int n, int exp) {
    std::vector<int> output(n);
    int i, count[10] = { 0 };
    int arrac_cnt = 0;

    for (i = 0; i < n; i++) {
        count[(data[i] / exp) % 10]++;
    }

    for (i = n-1; i >= 0; i--) {
        output[count[(data[i] / exp) % 10] - 1] = data[i];
        count[(data[i] / exp) % 10]--;
    }

    for (i = 0; i < n; i++) {
        data[i] = output[i];
        arrac_cnt++;
    }
    m.array_accesses += arrac_cnt;
}

void radixSort (std::vector<int>& data, Metrics& m, int n) {
    int maxVal = getMax(data, n);

    for (int exp = 1; (maxVal / exp) > 0; exp *= 10) {
        count_sort(data, m, n, exp);
    }
}

void radix_sort(std::vector<int>& data, Metrics& m) {
    if (data.empty()) return;
    auto start = Clock::now();
    int n = data.size();

    radixSort(data, m, n);

    m.time_ms = std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}