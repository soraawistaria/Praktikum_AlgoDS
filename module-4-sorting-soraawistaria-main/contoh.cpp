#include <iostream>
#include <vector>
#include <chrono>

using namespace std;

// Struct untuk menyimpan metric benchmarking
struct Metric {
    chrono::high_resolution_clock::time_point start;
    chrono::high_resolution_clock::time_point end;
    chrono::duration<double, milli> duration;

    void startTimer() {
        start = chrono::high_resolution_clock::now();
    }

    void stopTimer() {
        end = chrono::high_resolution_clock::now();
        duration = end - start;
    }

    double getMilliseconds() const {
        return duration.count();
    }
};

// Fungsi merge
void merge(vector<int>& data, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    vector<int> L(n1);
    vector<int> R(n2);

    // Copy data ke temporary array
    for (int i = 0; i < n1; i++)
        L[i] = data[left + i];

    for (int j = 0; j < n2; j++)
        R[j] = data[mid + 1 + j];

    int i = 0;
    int j = 0;
    int k = left;

    // Merge kembali ke data[]
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            data[k] = L[i];
            i++;
        } else {
            data[k] = R[j];
            j++;
        }
        k++;
    }

    // Sisa elemen kiri
    while (i < n1) {
        data[k] = L[i];
        i++;
        k++;
    }

    // Sisa elemen kanan
    while (j < n2) {
        data[k] = R[j];
        j++;
        k++;
    }
}

// Fungsi merge sort recursive
void mergeSort(vector<int>& data, int left, int right) {
    if (left >= right)
        return;

    int mid = left + (right - left) / 2;

    mergeSort(data, left, mid);
    mergeSort(data, mid + 1, right);

    merge(data, left, mid, right);
}

// Wrapper function
void mergeSortWrapper(vector<int>& data, Metric& metric) {
    metric.startTimer();

    mergeSort(data, 0, data.size() - 1);

    metric.stopTimer();
}

int main() {
    vector<int> data = {38, 27, 43, 3, 9, 82, 10};

    Metric metric;

    mergeSortWrapper(data, metric);

    cout << "Hasil sorting:\n";
    for (int x : data) {
        cout << x << " ";
    }

    cout << "\n\nDurasi: "
        << metric.getMilliseconds()
        << " ms\n";

    return 0;
}
