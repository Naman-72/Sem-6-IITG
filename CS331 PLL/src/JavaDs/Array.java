package JavaDs;
@SuppressWarnings("unchecked")

public class Array<T> {
    private int size,realLength;
    private Object arr[];

    public Array(int n,T initValue)
    {
        arr = new Object[n];
        size = n;
        for(int i = 0;i<n;i++) arr[i] = initValue;
        realLength = n;
    }

    public Array(int n)
    {
        arr = new Object[n];
        size = n;
        realLength = n;
    }

    public Array()
    {
        arr = new Object[1];
        size = 0;
        realLength = 1;
    }

    public T get(int index)
    {
        if(index >= size) throw new IndexOutOfBoundsException("Index out of bound\n");
        final T t = (T)arr[index];
        return t;
    }

    public void set(int index, T value)
    {
        if(index >= size) throw new IndexOutOfBoundsException("Index out of bound\n");
        arr[index] = value;
    }

    public int length()
    {
        return size;
    }

    public void push_back(T value)
    {
        if(realLength > size) arr[size] = value;
        else
        {
            Object temp[] = new Object[2*size];
            for(int i = 0;i<size;i++) temp[i] = arr[i];
            temp[size] = value;
            realLength *= 2;
            arr = temp;
        }
        size++;
    }

    public void insert(int index,T value)
    {
        if(index >= size) throw new IndexOutOfBoundsException("Index out of bound\n");
        if(realLength == size)
        {
            Object temp[] = new Object[2*size];
            for(int i = 0;i<size;i++) temp[i] = arr[i];
            temp[size] = value;
            realLength *= 2;
            arr = temp;
        }
        size++;
        for(int i = size-1;i>index;i--) arr[i] = arr[i-1];
        arr[index] = value;
    }

    public void delete(int index)
    {
        if(index >= size) throw new IndexOutOfBoundsException("Index out of bound\n");
        for(int i = index;i<size-1;i++) arr[i] = arr[i+1];
        size--;
    }

    public void pop_back()
    {
        size--;
    }

    public void print()
    {
        for(int i = 0;i<size;i++) System.out.print(arr[i] + " ");
        System.out.print("\n");
    }

    public boolean isEmpty()
    {
        return (size == 0);
    }

    private void swap(int i,int j)
    {
        Object temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    private void heapify(int i,Comparator<? super T> comparator,int lsize)
    {
        int idx = i;

        while(true)
        {
            if(2*i + 1< lsize && comparator.compare((T)arr[idx],(T)arr[2*i + 1])) idx = 2*i + 1;
            if(2*i + 2 < lsize && comparator.compare((T)arr[idx],(T)arr[2*i + 2])) idx = 2*i + 2;
            
            if(idx != i){
                swap(i,idx);
                i = idx;
            }
            else break;
        }
        
    }

    public void sort(Comparator<? super T> comparator)
    {
        for(int i = size/2 - 1; i>=0 ; i--) heapify(i, comparator,size);
        for(int i = size - 1; i>=0; i--)
        {
            swap(i,0);
            heapify(0, comparator,i);
        }
    }

    public void reverse()
    {
        for(int i = 0;i<size/2;i++) swap(i,size-i-1);
    }

    public T back()
    {
        return (T)arr[size - 1];
    }
}
