#include "double_linked_list.h"
#include <iostream>
using namespace std;

void DoubleLinkedList::init() {
    clear();
    head = nullptr;
    tail = nullptr;
}

bool DoubleLinkedList::is_empty() {
    if (head == nullptr && tail == nullptr) {
        return true;
    }
    return false;
}

void DoubleLinkedList::add_front(char val) {
    //tambah deoan
    Node * newNode = new Node;
    newNode->data = val;
    if (is_empty()) {
        head = tail = newNode;
        tail->next = head;
        tail->prev = newNode;
    } else {
        newNode->next = head;
        head = newNode;

        tail->next = head;
        newNode->prev = tail;
    }
    size++;
}

void DoubleLinkedList::add_back(char val) {
    if (is_empty()) {
        add_front(val); 
        return;
    }
    Node * newNode = new Node;
    newNode->data = val;
    newNode->next = head;
    newNode->prev = tail;

    tail->next = newNode;
    tail = newNode;
    head->prev = tail;
    size++;
}

void DoubleLinkedList::add_idx(char val, int idx) {
    //insert
    if (idx == 0) {
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
        for (int i=0; i < idx-1; i++) {
            curr = curr->next;
        }
        newNode->next = curr->next;
        newNode->prev = curr;
        curr->next = newNode;
        curr->next->prev = newNode;
    }
    size++;
}

void DoubleLinkedList::delete_front() {
    //hapus depan
    if (is_empty()) return;
    if (head == tail) {
        delete head;
        head = nullptr;
        tail = nullptr;
        size = 0;
    } else {
        Node * curr = head;
        head = head->next;
        head->prev = tail;
        tail->next = head;

        delete curr;
        size--;
    }
}

void DoubleLinkedList::delete_back() {
    if (is_empty()) return;
    if (head == tail) {
        delete_front();
        return;
    } else {
        Node * curr = head;
        while (curr->next != tail) {
            curr = curr->next;
        }
        delete tail;
        tail = curr;
        tail->next = head;
        head->prev = tail;
        size--;
    }
}

void DoubleLinkedList::delete_idx(int idx) {
    if (is_empty()) return;
    Node * nodePtr = head;
    int count = 0;

    if (idx==0) {
        delete_front();
        return;
    }
    if (nodePtr->next == head) {
        delete_back (); 
        return; 
    }
    while (count < idx-1 && nodePtr->next != head) {
        nodePtr = nodePtr->next;
        count++;
    }
    Node * target = nodePtr->next;
    nodePtr->next = target->next;
    target->next->prev = nodePtr;

    delete target;
    size--;
}

void DoubleLinkedList::display() {
    if (!is_empty()) {
        Node *  curr;
        curr = head;
        do {
            cout << curr->data;
            curr = curr->next;
        } while (curr != head);

        cout << endl;
    } else {
        cout << "List Kosong" << endl;
    }
}

char DoubleLinkedList::get(int idx) {
    if (is_empty()) throw std::runtime_error("List kosong");

    Node * curr = head;
    for (int i=0; i<idx; i++) {
        curr = curr->next;
    }
    return curr->data;
}

void DoubleLinkedList::set(char val, int idx) {
    if (is_empty()) return;

    Node * curr = head;
    for (int i=0; i<idx; i++) {
        curr = curr->next;
    }
    curr->data = val;
}

void DoubleLinkedList::clear() {
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