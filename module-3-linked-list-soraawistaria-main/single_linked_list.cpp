#include "single_linked_list.h"
#include <iostream>
using namespace std;

void SingleLinkedList::init() {
    clear();
    head = nullptr;
    tail = nullptr;
}

bool SingleLinkedList::is_empty() {
    if (head == nullptr && tail == nullptr) {
        return true;
    } 
    return false;
}

void SingleLinkedList::add_front(int val) {
    // nambah di depan
    Node * newNode = new Node;
    if (is_empty()) {
        head = tail = newNode;
        newNode->data = val;
        tail->next = head;
    } else {
        newNode->data = val;  //menambah data
        newNode->next = head;  //nextnya newnode menuju head lama
        head = newNode;         // ganti head baru
        tail->next = head;
    }
    size++;
}

void SingleLinkedList::add_back(int val) {
    Node * newNode = new Node;
    newNode->data = val;
    newNode->next = head;
    if (is_empty()) {
        add_front(val);
        return;
    } else {
        tail->next = newNode; 
        tail = newNode;
    }
    size++;
}

void SingleLinkedList::add_idx(int val, int idx) {
    if (idx==0) {
        add_front(val);
        return;
    } else if (idx < 0) {
        throw std::runtime_error("Woi input indeks yang bener");
    } else if (idx > size) {
        throw std::runtime_error("KELEBIHAN INDEKSNYA!");
    } else if (idx == size) {
        add_back(val);
        return;
    } else {
        Node * newNode = new Node;
        newNode->data = val;
        Node * curr = head;
        for (int i=0; i<idx-1; i++) {
            curr = curr->next;
        }
        newNode->next = curr->next;
        curr->next = newNode;
    }
    size++;
}

void SingleLinkedList::delete_front() {
    if (is_empty()) return;
    if (head == tail) {
        delete head;
        head = nullptr;
        tail = nullptr;
        size = 0;
    } else {
        Node * curr = head;
        head = head->next;
        tail->next = head;

        delete curr;
        size--;
    }
}

void SingleLinkedList::delete_back() {
    if (is_empty()) return;

    if (head == tail) { //jika hanya 1 node
        delete head;
        head = tail = nullptr;
        size--;
    } else {
        Node * curr = head;
        while (curr->next != tail) {
            curr = curr->next;
        }
        delete tail;
        tail = curr;
        tail->next = head;
        size--;
    }
}

void SingleLinkedList::delete_idx(int idx) {
    if (is_empty()) return;
    if (idx==0) {
        delete_front();
        return;
    }
    Node * curr = head;
    for (int i=0; i<idx-1; i++) {
        curr = curr->next;
    }
    Node * temp = curr->next; 
    curr->next = temp->next;

    if (temp == tail) tail = curr; //memindah tail

    delete temp;
    size--;
}

void SingleLinkedList::display() {
    if (!is_empty()) {
        Node *  curr;
        curr = head;
        do {
            cout << curr->data << " ";
            curr = curr->next;
        } while (curr != head);

        cout << endl;
    } else {
        cout << "List Kosong" << endl;
    }
}

int SingleLinkedList::get(int idx) {
    if (is_empty()) throw std::runtime_error("List kosong");

    Node * curr = head;
    for (int i=0; i<idx; i++) {
        curr = curr->next;
    }
    return curr->data;
}

void SingleLinkedList::set(int val, int idx) {
    if (is_empty()) return;

    Node * curr = head;
    for (int i=0; i<idx; i++) {
        curr = curr->next;
    }
    curr->data = val;
}

void SingleLinkedList::clear() {
    while (!is_empty()) {
        Node * curr = head;
        if (size == 1) { head = tail = nullptr; }
        else {
            head = head->next;
            tail->next = head;
        }
        delete curr;
        size--;
    }
    head = nullptr;
    tail = nullptr;
    size = 0;
}