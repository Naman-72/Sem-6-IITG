package JavaDs;

public class PriorityQueue<T> {
    private Array<T>heap;
    private Comparator<? super T> comparator;
    public PriorityQueue(Comparator<? super T> comparator)
    {
        this.comparator = comparator;
        this.heap = new Array<>();
    }

    public void push(T data)
    {
        heap.push_back(data);
        heapifyUp();
    }

    public T top()
    {
        return heap.get(0);
    }

    public void pop()
    {
        heap.set(0, heap.back());
        heap.pop_back();
        heapifyDown(0);
    }

    private void heapifyUp()
    {
        int idx = heap.length() - 1;
        while(true)
        {
            int parent = (idx - 1)/2;
            if(parent >= 0 && comparator.compare(heap.get(idx),heap.get(parent)))
            {
                swap(parent,idx);
                idx = parent;
                if(idx == 0) break;
            }
            else break;
        }
    }

    private void heapifyDown(int i)
    {
        int idx = i;
        int size = heap.length();
        
        while(true)
        {
            if(2*i + 1< size && comparator.compare(heap.get(2*i + 1),heap.get(idx))) idx = 2*i + 1;
            if(2*i + 2 < size && comparator.compare(heap.get(2*i + 2),heap.get(idx))) idx = 2*i + 2;
            
            if(idx != i){
                swap(i,idx);
                i = idx;
            }
            else break;
        }
        
    }

    private void swap(int i,int j)
    {
        T temp = heap.get(i);
        heap.set(i, heap.get(j));
        heap.set(j,temp);
    }

    public boolean isEmpty()
    {
        return heap.isEmpty();
    }
}
