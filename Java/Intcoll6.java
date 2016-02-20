import java.util.*;
import java.io.*;

public class Intcoll6
{
   private int howmany;
   private btNode c;

   public Intcoll6()
   {
      c = null;
      howmany = 0;
   }

   public Intcoll6(int i)
   {
      c = null;
      howmany = 0;
   }

   private static btNode copytree(btNode t)
   {
      btNode root=null;
      if (t!=null)
      {
         root=new btNode();
         root.info=t.info; 
         root.left=copytree(t.left);
         root.right=copytree(t.right);
      }
      return root;
   }

   public void copy(Intcoll6 obj)
   {
      if (this!=obj)
      {
          howmany=obj.howmany;
          c=copytree(obj.c);  
      }
   }

   public void insert(int i)
   {
      btNode pred=null, p=c;

      while ((p!=null)&&(p.info!=i))
      {
		  pred=p;
		  if (p.info>i) p=p.left;
		  else p=p.right;
      }
      if (p==null)
      {
         howmany++; p=new btNode(i, null, null);
         if (pred!=null)
         {
			 if (pred.info>i) pred.left=p;
			 else pred.right=p;
		 }
		 else c=p;
      }
   }

   public void omit(int i)
   {
	btNode pred = null; btNode p = c;
	while((p != null) && (p.info != i))  
	{
	   pred = p;
	   if(p.info > i) p = p.left;
	   else p = p.right;
	}    
	
	if(p == null)
	{
	  return; 
	}
	else if((p.left == null) && (p.right == null))
	{
	   howmany--;
	   if(pred == null) c = null;
	   else if(pred.info > i) pred.left = null;
	   else pred.right = null;
	}
	else if((p.left == null) && (p.right != null))
	{
	   howmany--;
	   if(pred == null) c = p.right;
	   else if(pred.info > i) pred.left = p.right;
	   else pred.right = p.right;
	}
	else if((p.left != null) && (p.right ==null))
	{
	   howmany--;
	   if(pred == null) c = p.left;
	   else if(pred.info > i) pred.left = p.left;
	   else pred.right = p.left;
	}
	else
	{
	   howmany--;
	   if(pred == null) 
	   {	
		c.right.left = c.left; 
		c = c.right;
	   }	
	   else
	   {
		btNode t = p.right;
	   	btNode tmp = null;
	   	while(t.left != null)
	   	{
		   tmp = t;
		   t = t.left;
	   	}
		if(tmp != null)
	   	{
		   p.info = t.info;
		   tmp.left = null;
	   	}
		else
		{
		   p.left = t.left;
		   pred.right = t; 
		}
	   }
   	}
   }

   public boolean belongs(int i)
   {
      btNode p=c;
      while ((p!=null)&&(p.info!=i)) 
      {
         if (p.info>i) p=p.left;
         else p=p.right;
      }
      return (p!=null); 
   }

   public int get_howmany() {return howmany;}

   public void print(String outname)
   {
      try
      {
	 PrintWriter outs=new PrintWriter(new FileOutputStream(outname));
         outs.println("The number of integers is "+howmany);
         outs.println();
         printtree(c, outs);
         outs.close();
      }
      catch (IOException ex)
      {
      }
   }

   public void print()
   {
      printtree(c);
   }

   public boolean equals(Intcoll6 obj)
   {
      int j = 0; boolean result  = (howmany==obj.howmany);
      if (result)
      { 
         int[] a=new int[howmany]; 
         int[] b=new int[howmany];
         toarray(c, a, 0); toarray(obj.c, b, 0);

         j=0;
         while ((result) && (j<howmany))
         {
            result=(a[j]==b[j]); j++;
         }
      }
      return result;
   }

   private static void printtree(btNode t, PrintWriter outs)
   {   
	   if (t!=null)
	   {
		   printtree(t.left, outs);
		   outs.println(t.info);
		   printtree(t.right, outs);
	   }
   }

   private static void printtree(btNode t)
   {
      if (t!=null)
      {
          printtree(t.left);
          System.out.println(t.info);
          printtree(t.right);
      }
   }

   private static int toarray(btNode t, int[] a, int i)
   {
      int num_nodes=0;
      if (t!=null)
      {
         num_nodes=toarray(t.left, a, i);
         a[num_nodes+i]=t.info;   
         num_nodes=num_nodes+1+toarray(t.right, a, num_nodes+i+1);
      }
      return num_nodes;
   } 

   private static class btNode
   {
       int info; btNode left; btNode right;

       private btNode(int s, btNode lt, btNode rt)
       {
          info=s; left=lt; right=rt;  
       }

       private btNode()
       {
          info=0; left=null; right=null;
       }
   }
}


