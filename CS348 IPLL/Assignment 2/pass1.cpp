#include <bits/stdc++.h>
#include <iostream>
#include <fstream>
#include <string>
using namespace std;
// Map for converting hexadecimal
// values to decimal
int hexadecimalToDecimal(string hexVal)
{
    int len = hexVal.size();
 
    // Initializing base value to 1, i.e 16^0
    int base = 1;
 
    int dec_val = 0;
 
    // Extracting characters as digits from last
    // character
    for (int i = len - 1; i >= 0; i--) {
        // if character lies in '0'-'9', converting
        // it to integral 0-9 by subtracting 48 from
        // ASCII value
        if (hexVal[i] >= '0' && hexVal[i] <= '9') {
            dec_val += (int(hexVal[i]) - 48) * base;
 
            // incrementing base by power
            base = base * 16;
        }
 
        // if character lies in 'A'-'F' , converting
        // it to integral 10 - 15 by subtracting 55
        // from ASCII value
        else if (hexVal[i] >= 'A' && hexVal[i] <= 'F') {
            dec_val += (int(hexVal[i]) - 55) * base;
 
            // incrementing base by power
            base = base * 16;
        }
    }
    return dec_val;
}
string toHex(int num1){
      if (num1 == 0)
         return "0";
      int num = num1;
      string s = "";
      while (num) {
         int temp = num % 16;
         if (temp <= 9)
            s += (48 + temp);
         else
            s += (87 + temp);
         num = num / 16;
      }
      reverse(s.begin(), s.end());
      return s;
   }
map<char, int> hex_value_of_dec(void)
{
    // Map the values to decimal values
    map<char, int> m{ { '0', 0 }, { '1', 1 },
                      { '2', 2 }, { '3', 3 },
                      { '4', 4 }, { '5', 5 },
                      { '6', 6 }, { '7', 7 },
                      { '8', 8 }, { '9', 9 },
                      { 'A', 10 }, { 'B', 11 },
                      { 'C', 12 }, { 'D', 13 },
                      { 'E', 14 }, { 'F', 15 } };
 
    return m;
}
 
// Map for converting decimal values
// to hexadecimal
map<int, char> dec_value_of_hex(void)
{
    // Map the values to the
    // hexadecimal values
    map<int, char> m{ { 0, '0' }, { 1, '1' },
                      { 2, '2' }, { 3, '3' },
                      { 4, '4' }, { 5, '5' },
                      { 6, '6' }, { 7, '7' },
                      { 8, '8' }, { 9, '9' },
                      { 10, 'A' }, { 11, 'B' },
                      { 12, 'C' }, { 13, 'D' },
                      { 14, 'E' }, { 15, 'F' } };
 
    return m;
}
 
// Function to add the two hexadecimal numbers
string Add_Hex(string a, string b)
{
    map<char, int> m = hex_value_of_dec();
    map<int, char> k = dec_value_of_hex();
 
    // Check if length of string first is
    // greater than or equal to string second
    if (a.length() < b.length())
        swap(a, b);
 
    // Store length of both strings
    int l1 = a.length(), l2 = b.length();
 
    string ans = "";
 
    // Initialize carry as zero
    int carry = 0, i, j;
 
    // Traverse till second string
    // get traversal completely
    for (i = l1 - 1, j = l2 - 1;
         j >= 0; i--, j--) {
 
        // Decimal value of element at a[i]
        // Decimal value of element at b[i]
        int sum = m[a[i]] + m[b[j]] + carry;
 
        // Hexadecimal value of sum%16
        // to get addition bit
        int addition_bit = k[sum % 16];
 
        // Add addition_bit to answer
        ans.push_back(addition_bit);
 
        // Update carry
        carry = sum / 16;
    }
 
    // Traverse remaining element
    // of string a
    while (i >= 0) {
 
        // Decimal value of element
        // at a[i]
        int sum = m[a[i]] + carry;
 
        // Hexadecimal value of sum%16
        // to get addition bit
        int addition_bit = k[sum % 16];
 
        // Add addition_bit to answer
        ans.push_back(addition_bit);
 
        // Update carry
        carry = sum / 16;
        i--;
    }
 
    // Check if still carry remains
    if (carry) {
        ans.push_back(k[carry]);
    }
 
    // Reverse the final string
    // for desired output
    reverse(ans.begin(), ans.end());
 
    // Return the answer
    return ans;
}
int main()
{
    // to store line
    string line;
    // Read from the text file
    ifstream MyReadFile("sample_input.txt");
    string locctr = "0";
    // Use a while loop together with the getline() function to read the file line by line
    int startcondn = 0;
    string opcode = "";
    string label = "";
    string operand = "";
    map<string,string> symtab;
    map<string,string> optab;
    optab["ADD"] ="18";
    optab["SUB"] ="1C";
    optab["MUL"]="20";
    optab["DIV"]="24";
    optab["COMP"]="28";
    optab["JMP"]="3C";
    optab["JLE"]="naman";
    optab["JE"]="naman";
    optab["JGE"]="naman";
    optab["JNE"]="naman";
    optab["JL"]="naman";
    optab["JG"]="naman";
    optab["MOV"]="naman";
    optab["LDA"]="00";
    optab["LDX"]="04";
    optab["LDL"]="08";
    optab["STA"]="0C";
    optab["STX"]="10";
    optab["STL"]="14";
    optab["LDCH"]="50";
    optab["STCH"]="54";
    optab["TD"]="E0";
    optab["RD"]="D8";
    optab["WD"]="DC";

    // senior
    optab["ADD"]="18";
    optab["AND"]="40";
	optab["COMP"]="28";
	optab["DIV"]="24";
	optab["J"]="3C";
	optab["JEQ"]="30";
	optab["JGT"]="34";
	optab["JLT"]="38";
	optab["JSUB"]="48";
	optab["LDA"]="00";
	optab["LDCH"]="50";
	optab["LDL"]="08";
	optab["LDX"]="04";
	optab["MUL"]="20";
    optab["OR"]="44";
	optab["RD"]="D8";
	optab["RSUB"]="4C";
	optab["STA"]="0C";
	optab["STCH"]="54";
	optab["STSW"]="E8";
	optab["STL"]="14";
	optab["STX"]="10";
	optab["SUB"]="1C";
	optab["TD"]="E0";
	optab["TIX"]="2C";
	optab["WD"]="DC";
    bool errorflag = false;
    while (getline(MyReadFile,line))
    {
            vector<string> words;
            string word = "";
            for (auto it = line.begin(); it!=line.end();it++)
            {
                if(*it==' ')
                {
                    if(word=="")
                    {
                        continue;;
                    }
                    else
                    {
                        words.push_back(word);
                        word="";
                    }
                }
                else
                {
                    word=word+*it;
                }
            }
            if(word=="")
            {
                continue;;
            }
            else
            {
                words.push_back(word);
                word="";
            }
        
            if(words.size()==0||words[0]==".")
            {
                // it is a comment 
                cout<<line<<endl;
                continue;
            }
            {
                int labelpresent = 0;
                if(words.size()==3)
                {
                    labelpresent = 1;
                    label = words[0];                   
                    opcode = words[1];
                    operand = words[2];
                }
                else if(words.size()==2)
                {                   
                    opcode = words[0];
                    operand = words[1];
                }
                if(opcode=="START")
                {
                    locctr = operand;
                }
                cout<<locctr<<" "<<line<<endl; 
                if(opcode=="START")
                {
                    
                }
                else if(opcode=="END")
                {
                    
                }
                else
                {
                    if(labelpresent==1)
                    {
                        if(symtab.find(label)!=symtab.end())
                        {
                            errorflag = true;
                            // error type = duplicate entry
                        }
                        else
                        {
                            symtab[label] = locctr;
                        }
                    }
                    // search optab for opcode 
                    if(optab.find(opcode)!=optab.end())
                    {
                        locctr  =Add_Hex(locctr,toHex(3));
                    }
                    else if(opcode=="WORD")
                    {
                        locctr  =Add_Hex(locctr,toHex(3));;
                    }
                    else if(opcode=="RESW")
                    {
                        locctr  =Add_Hex(locctr,toHex(3*stoi(operand)));
                    }
                    else if(opcode=="RESB")
                    {
                        // note operand is in hex 
                        locctr  =Add_Hex(locctr,toHex(stoi(operand)));
                    }
                    else if(opcode=="BYTE")
                    {
                        // verify
                        if(operand[0]=='C')
                        {
                            int a = operand.size();
                            locctr  = Add_Hex(locctr,to_string(a-3));
                        }
                        else if(operand[0]=='X')
                        {
                            locctr = Add_Hex(locctr,"1");
                        }
                    }
                    else
                    {
                        // invalid operation code
                        errorflag = true;
                    }
                }
            }
    }
    // Close the file
    MyReadFile.close();
}