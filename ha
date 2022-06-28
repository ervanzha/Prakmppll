class node:
    def _init_(self, data):
        self.data = data
        self.next = None
class LinkedList():
    def _init_(self):
        self.head = None
    def print_linkedlist(self):
        if self.head is None:
            print("Linked list is empty")
        else:
            n= self.head
            while n is not None:
                print(n.data,end=" -->")
                n = n.next
    def tambah_awal(self, data):
        new_node = node(data)
        new_node.next = self.head
        self.head = new_node
    def tambah_akhir(self, data):
        new_node = node(data)
        n = self.head
        while n.next is not None:
            n = n.next
        n.next = new_node
    
    def sisipSesudah(self, data, after_data):
        new_node = node(data)
        n = self.head
        while n.data != after_data:
            n = n.next
        new_node.next = n.next
        n.next = new_node
    def sisipSebelum(self, data, before_data):
        new_node = node(data)
        n = self.head
        while n.data != before_data:
            n = n.next
        new_node.next = n.next
        n.next = new_node
    def hapusss(self, data):
        n = self.head
        while n.data != data:
            n = n.next
        n.next = n.next.next

    def menu(self):
        print("\n1. tambah node di awal")
        print("2. tambah node di akhir")
        print("3. sisipkan node setelah (data)")
        print("4. sisipkan node sebelum (data)")
        print("5. Print linked list")
        print("6. Hapus node (data)")
        print("7. Close")
        print("Pilih: ")
    

#run thiscode
lisss = LinkedList()
while True:
    lisss.menu()
    choice = int(input())
    if choice == 1:
        lisss.tambah_awal(input("Masukan angka: "))
    elif choice == 2:
        lisss.tambah_akhir(input("Masukan angka: "))
    elif choice == 3:
        lisss.sisipSesudah(input("Masukan angka: "), input("Setelah angka: "))
    elif choice == 4:
        lisss.sisipSebelum(input("Masukan angka: "), input("Sebelum angka: "))
    elif choice == 5:
        lisss.print_linkedlist()
    elif choice == 6:
        lisss.hapusss((input("Masukan angka yang ingin dihapus: ")))
    elif choice == 7:
        break
        Print("Invalid Choice")
