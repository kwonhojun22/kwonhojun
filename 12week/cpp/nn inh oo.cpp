#include <iostream>
using namespace std;
class mm {
public:
	mm() { a = 4 + 300; cout << "mm\n"; }
	mm(int b) { a = b + 100; cout << "mmb\n"; }
	int a;
};
class nn : public mm {
public:
	nn() { a = 11;  cout << "nn\n"; }
	nn(int b) { c = a;  a = b; mm::mm(a);  cout << "nnb\n"; }
	int c;
};
class oo :public nn {
public:
	oo() { a = 15; cout << "oo" << endl; }
	oo(int b) { d = a + 4; a = c; nn::nn(a); cout << "oob" << endl; }
	int d;
};
int main() {
	nn pp(3);
	oo dd(3);
	/*cout << pp.a << endl;
	cout << pp.c << endl;*/
	cout << dd.a << endl;
	return 123;
}
