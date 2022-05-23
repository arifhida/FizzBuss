using System;

namespace FizzBuss
{
    class Program
    {
        static void Main(string[] args)
        {
            
            for (int i = 0; i < 100; i++)
            {
                Console.WriteLine(GetString(i));
            }

            Console.ReadLine();
        }

        static string GetString(int i)
        {
            string x = string.Empty;
            if ((i + 1) % 3 == 0)
            {
                x += "Fizz";
            }
            if ((i + 1) % 5 == 0)
            {
                x += "Buzz";
            }
            if((i + 1) % 3 != 0 && (i + 1) % 5 != 0)
            {
                x += (i+1).ToString();
            }
            return x;
        }
    }
}
