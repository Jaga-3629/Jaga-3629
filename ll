class Node:
    def __init__(self,data):
        self.data=data
        self.previous=None
        self.next=None
class linkedlist:
    def __init__(self):
        self.head=None
        self.tail=None
    def push(self,data):
        if(self.head==None):
            self.head=self.tail=Node(data)
            self.tail.previous=None
            self.tail.next=None
        else:
            newNode=Node(data)
            self.tail.next = newNode;   
            newNode.previous = self.tail;    
            self.tail = newNode;
            self.tail.next = None;  
    def display(self):
        tmp=self.head
        while tmp is not None:
            print(tmp.data)
            tmp=tmp.next
    def count(self):
        tmp=self.head
        c=0
        while(tmp is not None):
            tmp=tmp.next
            c+=1
        return c
    def rotate(self,n):
        current = self.head;  
        for i in range(0,n-1):
            current=current.next
        self.tail.next=self.head
        self.head=current.next
        current.previous=None
        self.tail=current
        self.tail.next=None
    def delete(self,key):
        temp=self.head
        if(self.head.data==key):
            self.head=self.head.next
            self.head.previous=None
        elif(self.tail.data==key):
            self.tail=self.tail.previous
            self.tail.next=None
        else:
            while(temp.next is not None):(The given input is 1,2,3,4 if you need to pop 3,then prev=2 and temp=3,so the 2.next=3.next(4))
                if(temp.data==key):
                    break
                prev=temp
                temp=temp.next
            prev.next=temp.next
            temp=None
    def sort(self):
        srt=self.head
        new=[]
        while srt is not None:
            new.append(srt.data)
            srt=srt.next
        new.sort()
        newll=linkedlist()
        for i in new:
            newll.push(i)
        return newll
    def rev(self):
        revt=self.head
        rever=[]
        while revt is not None:
            rever.append(revt.data)
            revt=revt.next
        rever.reverse()
        newrll=linkedlist()
        for i in rever:
            newrll.push(i)
        return newrll
    def delll(self):
        w=self.head
        while(w is  not None):
            del w.data
            w=w.next
l=linkedlist()
l.push(4)
l.push(3)
l.push(2)
l.push(1)
l.push(9)
l.push(11)
l.rotate(4)
l.delete(4)
print(l.count())
l=l.sort()
l=l.rev()
l.delll()
l.push(1)
l.display()
