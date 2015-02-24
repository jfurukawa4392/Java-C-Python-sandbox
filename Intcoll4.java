import java.util.*;

public class Intcoll4
{
   private ListNode c;
   private int how_many;

   public Intcoll4() //Constructs instance of Integer collection
   {
        c = new ListNode();
        how_many=0;
   }

   public Intcoll4(int i)
   //Constructs instance of Integer collection
   {
        c = new ListNode();
        how_many=0;
   }

   public void copy(Intcoll4 obj)
   //copying obj contents into alternative instance
   {
        if (this != obj)
        {
                c = new ListNode();
                ListNode p = c;
                ListNode d = obj.c;
                while (d != null)
                {
                   p.info = d.info;
                   p.link = new ListNode();
                   p = p.link;
                   d = d.link;
                }
                how_many=obj.how_many;
        }
   }

   public boolean belongs(int i)
   //returns true if the given int exists in this object
   {
        if(i > 0)
        {
           ListNode p = c;
           while(p != null && p.info != i)
           {
                p = p.link;
           }
           if(p == null)
           {
                return false;
           }
           else
           {
                return true;
           }
        }
        else
        {
           return false;
        }
   }

   public void insert(int i)
   //checks to see if the given int is in this collection and if it ism't, the number is added to the collection
   {
        if (i > 0)
        {
           ListNode p = c;
           while(p != null && p.info != i)
           {
                p = p.link;
           }
           if(p == null)
           {
                p = new ListNode();
                p.info = i;
                p.link = c;
                c = p;
                how_many++;
           }
        }
   }

   public void omit(int i)
   //checks to find the given int in the collection then deletes it if found
   {
        if (i>0)
        {
           ListNode  p = c;
           ListNode tmp = null;

           while(p != null)
           {
                if(p.info == i)
                {
                   if(p == c)
                   {
                        c = c.link;
                   }
                   else
                   {
                        tmp.link = p.link;
                   }
                }
                tmp = p;
                p = p.link;
           }
        }
   }

   public int get_howmany()
   //returns the cardinality of the integer set in the collection
   {
        return how_many;
   }

   public void print()
   //prints out the members of this collection
   {
        ListNode p = c;
        while (p != null)
        {
           if (p.info > 0)
           {
                System.out.println(p.info);
           }
           p = p.link;
        }
   }

   public boolean equals(Intcoll4 obj)
   //returns true if collections contain the same set of numbers, returns false otherwise
   {
        boolean result = true;
        if (how_many != obj.how_many)
        {
                result = false;
        }
        ListNode p = c;
        ListNode d = obj.c;
        while (p != null && result)
        {
                result = (p.info == d.info);
                p = p.link;
                d = d.link;
        }
        return result;
   }


   private class ListNode
   {
        private int info;
        private ListNode link;

        public ListNode()
        {
         info=0; link=null;
        }
   }
}


                                                              120,1         57%
