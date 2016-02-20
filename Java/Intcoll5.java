import java.util.*;

public class Intcoll5
{

   private LinkedList<Integer> c;

   public Intcoll5()
   //constructor
   {
        c = new LinkedList<Integer>();
   }

   public Intcoll5(int i)
   //alternate constructor 
   {
        c = new LinkedList<Integer>();
   }

   public void insert(int i)
   //inserts the element into the collection if it doesn't already contain it
   {
        Integer I = new Integer(i);
        if(!c.contains(I))
        {
           c.addFirst(I);
        }
   }

   public void copy(Intcoll5 obj)
   //copies the obj collection into this collection
   {
        ListIterator<Integer> M = obj.c.listIterator();
        c.clear();

        while(M.hasNext())
        {
           Integer I = M.next();
           c.add(I);
        }
   }

   public boolean belongs(int i)
   //returns true if the specified element exists in the collection
   {
        return c.contains(new Integer(i));
   }

   public void omit(int i)
   //removes the specified value from the collection if it exists
   {
        c.remove(new Integer(i));
   }

   public int get_howmany()
   //returns the cardinality of the set
   {
        return c.size();
   }

   public void print()
   //prints out the elements of the collection
   {
        ListIterator<Integer> L = c.listIterator();
        while(L.hasNext())
        {
           System.out.println(L.next());
        }
   }

   public boolean equals(Intcoll5 obj)
   // returns true if the collections contain the same numbers
   {
        ListIterator<Integer> L = c.listIterator();
        boolean result = true;

        if(c.size() != obj.c.size())
        {
           result = false;
        }

        while(L.hasNext() && result)
        {
           Integer k = L.next();
           ListIterator<Integer> M = obj.c.listIterator();
           while(M.hasNext() && result)
           {
                Integer n = new Integer(M.next());
                if(n.equals(k))
                {
                   break;
                }
                else if(!M.hasNext())
                {
                   result = false;
                }
           }
        }
        return result;
   }

}

