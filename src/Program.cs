using System;

namespace Hello
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            
            Console.WriteLine($"There are {args.Length} args.");

            foreach(var arg in args)
            {
                Console.WriteLine($"  {arg}");
            }
        }
    }
}
