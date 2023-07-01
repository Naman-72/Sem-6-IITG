#include <bits/stdc++.h>
using namespace std;



// globally defining symbol table and opcode table
map<string,string> symtab;
map<string,string> optab;
    


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
            s += (87-32 + temp);
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

string lenghtofprogram ="";

void pass1()
{
    string line;
    // Read from the text file
    ifstream MyReadFile("sample_input.txt");
    ofstream myfile2("intermediate.txt");
    
    string startaddr = "0";
    string locctr = "0000";
    // Use a while loop together with the getline() function to read the file line by line
    int startcondn = 0;
    string opcode = "";
    string label = "";
    string operand = "";

    /*
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
    optab["MOV"]="";
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
    */
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
                myfile2<<"     "<<line<<endl;
                continue;
            }

            // words max 4 types :
            // 1 word : opcode
            // ? if it is label // written in assumptions 

            // 2 word : opcode operand
            //          label opcode
            
            // 3 word : label opcode operand

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
                // case 1 opcode operand     
                label="";
                opcode = words[0];
                operand = words[1];
                
                // case 2 label opcode
                if((optab.find(opcode)==optab.end())&&(optab.find(operand)!=optab.end()))
                {
                    labelpresent = 1;
                    label = words[0];
                    opcode = words[1];
                    operand = "0000";
                }
            }
            else if(words.size()==1)
            {
                label = "";
                opcode = words[0];
                operand = "0";
            }

            if(opcode=="START")
            {
                locctr = operand;
            }
            myfile2<<locctr<<" "<<line<<endl; 
            if(opcode=="START")
            {
                startaddr = locctr;
            }
            else if(opcode=="END")
            {
                lenghtofprogram = toHex(hexadecimalToDecimal(locctr)-hexadecimalToDecimal(startaddr));
                break;   
            }
            else
            {
                if(labelpresent==1)
                {
                    if(symtab.find(label)!=symtab.end())
                    {
                        errorflag = true;
                        cout<<"DUPLICATE ENTRY"<<endl;
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
                    // note operand is not in hex 
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
                        // why are we adding this (operand.size()-3)/2)
                        locctr = Add_Hex(locctr,to_string((operand.size()-3)/2));
                    }
                }
                else
                {
                    // invalid operation code
                    errorflag = true;
                    cout<<"INVALID OPERATION CODE"<<endl;
                }
            }
    }
    // Close the file
    MyReadFile.close();
    myfile2.close();
}

/*
// pass 2 
    string opcode = "";
    string label = "";
    string operand = "";
    std::ifstream file("intermediate.txt");
    ofstream myfile1("output.txt");    
    std::string str; 
    string lineno = "";
    string programname = "";
    string startingaddr = "";
    string lastaddr = "";
    vector<string> TextRecords;
    string currText = "";
    queue<pair<string,string>> Q;
    int n = 0;
    while (std::getline(file, str)) {
    // process string ...
            vector<string> words;
            string word = "";
            for (auto it = str.begin(); it!=str.end();it++)
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
                continue;
            }
            else
            {
                words.push_back(word);
                word="";
            }   
            if(words.size()==0||words[0]==".")
            {
                // it is a comment 
                continue;
            }
            if(words.size()==4)
            {
                
                lineno = words[0];
                opcode = words[2];
                operand = words[3];
                label = words[1];
                lastaddr = lineno;
            }
            else if(words.size()==3)
            {
                // case 1 lineno opcode operand
                lineno = words[0];
                opcode = words[1];
                operand = words[2];
                label="";
                lastaddr = lineno;
                // case 2 lineno label opcode 
                if((optab.find(opcode)==optab.end())&&(optab.find(operand)!=optab.end()))
                {
                    lineno = words[0];
                    opcode = words[2];
                    label = words[1];
                    operand = "0";
                }
            }
            else if(words.size()==2)
            {
                lineno = words[0];
                opcode = words[1];
                operand = "0";
                label ="";
            }
            if(operand.find(",") != string::npos)
            {
                    operand.resize(operand.find(","));
                    int h = hexadecimalToDecimal(operand);
                    h+=32768;
                    operand = toHex(h);
			}
            if(opcode=="START")
            {
                programname=label;
                startingaddr = operand;
                // write listing line
            }
            if((opcode=="START")||(opcode=="END")||(opcode=="RESB")||(opcode=="RESW"))
            {
                if((opcode=="RESB")||(opcode=="RESW"))
                {
                   Q.push({"Naman","NAMAN"});
                }    
                continue;
            }
            if(opcode=="BYTE")
            {
                    string w = "";
					if(operand[0] == 'C' && operand[1] == '\''){
						// to check if it is EOF symbol
                        int o = 2;
						while(operand[o] != '\''){
							w+=toHex(int(operand[o]));
                            o++;
						}
					}
					else if(operand[0] == 'X' && operand[1] == '\''){
						int o = 2;
						while(operand[o] != '\''){
							w+=operand[o];
							o++;
						}
					}
                    Q.push({w,lineno});
            }
            else if(opcode == "WORD"){
					// int counter = stoi(operand);
					// string val = toHex(counter);
					// string s = "00000";
					// if(counter < 16){
						
					// }
					// else if(counter < 256){
					// 	s.pop_back();
					// }
					// else if(counter < 4096){
					// 	s.pop_back();
					// 	s.pop_back();
					// }
					// else {
					// 	s.pop_back();
					// 	s.pop_back();
					// 	s.pop_back();
					// }
					// Q.push({s+,});
			}
            // write HEADER RECORD TO OBJECT CODE
            // col 1 : H
            // COL 2 TO 7 : Program Name
            // col 8 to 13 : starting address (hex)
            // col 14 to 19 : lenght of object program in bytes


            // write TEXT RECORD TO OBJECT CODE
            // COL 1 : T
            // COL 2 TO 7 : STARTING ADDRESS IN TEXT RECORD
            // COL 8,9 : LENGHT OF OBJECT CODE IN THIS RECORD
            // COL 10 TO 69 : 10 INST
            if(operand=="0")
            {
                currText = optab[opcode]+"0000";
            }
            else
            {
                currText=optab[opcode]+symtab[operand];
            }
            Q.push({currText,lineno});
    }
    myfile1<<"H"<<programname;
    for (int i = 0; i < 6-programname.size(); i++)
    {
        myfile1<<" ";
    }
    for (int i = 0; i < 6-startingaddr.size(); i++)
    {
        myfile1<<"0";
    }
    myfile1<<startingaddr;
    int lenght = hexadecimalToDecimal(lastaddr)-hexadecimalToDecimal(startingaddr);
    string l = toHex(lenght);
    for (int i = 0; i < 6-l.size(); i++)
    {
        myfile1<<"0";
    }
    myfile1<<l<<endl;
    while (!Q.empty())
    {
        queue<string> Q1;
        string finalstring = "T";
        std::cout<<finalstring<<endl;
        for (int i = 0; i < 6-Q.front().second.size(); i++)
        {
            finalstring+="0";
        }   
        finalstring+=Q.front().second;
        for (int i = 0; i < 10; i++)
        {
            if(Q.front().first=="Naman")
            {
                Q.pop();
                break;
            }
            if(!Q.empty())
            {
                Q1.push(Q.front().first);
                Q.pop();
            }
            else
            {
                break;
            }
        }
        if(Q1.size()==0)
        {
            continue;
        }
        if(toHex(3*Q1.size()).size()==1)
        {
            finalstring+="0"+toHex(3*Q1.size());
        }
        else
        {
            finalstring += toHex(3*Q1.size());
        }
        while (!Q1.empty())
        {
            finalstring+=Q1.front();
            std::cout<<Q1.front()<<endl;
            Q1.pop();
        }
        std::cout<<finalstring<<endl;
        myfile1<<finalstring<<endl;
    }
    myfile1<<"E";
    for (int i = 0; i < 6-startingaddr.size(); i++)
    {
        myfile1<<"0";
    }
    myfile1<<startingaddr<<endl;
    file.close();

*/
void pass2()
{
    // pass 2 
    string opcode = "";
    string label = "";
    string operand = "";
    std::ifstream file("intermediate.txt");
    ofstream myfile1("output.txt");    
    std::string str; 
    string lineno = "";
    string programname = "";
    string startingaddrForRecord = "";
    string lastaddr = "";
    string currText = "";
    int n = 0;
    while (std::getline(file, str)) {
    // process string ...
            vector<string> words;
            string word = "";
            for (auto it = str.begin(); it!=str.end();it++)
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
                continue;
            }
            else
            {
                words.push_back(word);
                word="";
            }   
            if(words.size()==0||words[0]==".")
            {
                // it is a comment 
                continue;
            }
            if(words.size()==4)
            {
                // lineno label opcode operand
                lineno = words[0];
                opcode = words[2];
                operand = words[3];
                label = words[1];
                lastaddr = lineno;
            }
            else if(words.size()==3)
            {
                // case 1 lineno opcode operand
                lineno = words[0];
                opcode = words[1];
                operand = words[2];
                label="";
                lastaddr = lineno;
                // case 2 lineno label opcode 
                if((optab.find(opcode)==optab.end())&&(optab.find(operand)!=optab.end()))
                {
                    lineno = words[0];
                    opcode = words[2];
                    label = words[1];
                    operand = "";
                }
            }
            else if(words.size()==2)
            {
                // lineno opcode
                lineno = words[0];
                opcode = words[1];
                operand = "";
                label ="";
            }
            if(opcode=="START")
            {
                myfile1<<"H"<<programname;
                programname = label;
                myfile1<<label;
                for (int i = 0; i < 6-programname.size(); i++)
                {
                    myfile1<<" ";
                }
                for (int i = 0; i < 6-operand.size(); i++)
                {
                    myfile1<<"0";
                }
                myfile1<<operand;
                for (int i = 0; i < 6-lenghtofprogram.size(); i++)
                {
                    /* code */
                    myfile1<<"0";
                }
                myfile1<<lenghtofprogram<<endl;
            }
            else if(opcode=="END")
            {
				if(currText.length())
				{
					int len = (currText.length()) / 2;
					myfile1<<"T";
                    for (int i = 0; i < 6-startingaddrForRecord.size(); i++)
                    {
                        myfile1<<"0";
                    }
                    myfile1<<startingaddrForRecord;
                    for (int i = 0; i < 2-toHex(len).size(); i++)
                    {
                        myfile1<<"0";   
                    }
                    myfile1<<toHex(len);
                    myfile1<<currText<<endl;
				}
                myfile1<<"E";
                for (int i = 0; i < 6-symtab[operand].size(); i++)
                {
                    myfile1<<"0";
                }
                myfile1<<symtab[operand]<<endl;
            }
            else
            {
                string curr = "";
                if(optab[opcode]!="")
                {
                    curr = optab[opcode];
                    if(operand!="")
                    {
                        int final_value = 0;
                        // indirect addressing 
						if(operand.find(",") != string::npos)
						{
							operand.resize(operand.find(","));
							final_value+= 32768;
						}
                        if(symtab.find(operand)!=symtab.end())
                        {
                            final_value+=hexadecimalToDecimal(symtab[operand]);
                            for (int k = 0; k < 4-toHex(final_value).size(); k++)
                            {
                                curr+="0";
                            }
                            curr+=toHex(final_value);
                        }
                        else
                        {
                            curr+="0000";
                            // UNDEFINED SYMBOL
                            //ARE WE PRINTING ERROR HERE
                        }
                    }
                    else
                    {
                            curr+="0000";
                    }
                }
                else
                {
					if(opcode == "BYTE")
					{
						if(operand[0] == 'C')
						{
                            // C'___'
							string VAL = operand.substr(2,operand.length() - 3);
							for (auto x : VAL)
                            {
                                int y = x;
                                curr += toHex(y);
                            }
						}
						else
						{
                            // X'____'
							string VAL = operand.substr(2,operand.length() - 3);
                            curr+=VAL;
						}
					}	
					else if(opcode == "WORD")
					{
                        for (int i = 0; i < 6-toHex(stoi(operand)).size(); i++)
                        {
                             curr+="0";
                        }
                        curr+=toHex(stoi(operand));
                    }

                }
                if(currText.length()==0)
                {
                    startingaddrForRecord = lineno;
                }
                if((currText.length()+curr.length()<=60)&&(opcode != "RESW" )&&(opcode != "RESB"))
                {
                    currText+=curr;
                }
                else
                {
					if(currText.length())
					{
						int len = (currText.length()) / 2;
						myfile1<<"T";
                        for (int i = 0; i < 6-startingaddrForRecord.size(); i++)
                        {
                            myfile1<<"0";
                        }
                        myfile1<<startingaddrForRecord;
                        for (int i = 0; i < 2-toHex(len).size(); i++)
                        {
                            myfile1<<"0";   
                        }
                        myfile1<<toHex(len);
                        myfile1<<currText<<endl;
						currText=curr;
						startingaddrForRecord = lineno;
					}
                }
            }
    }
    file.close();
    myfile1.close();
    return;
}
int main()
{
    pass1();
    
    //optable generation
    ofstream OPfile("optab.txt");    
    for (auto it : optab)
    {
        OPfile<<it.first<<"      :    "<<it.second<<endl;
    }
    OPfile.close();

    //symbol table generation
    ofstream SYMfile("symtab.txt");
    for (auto it : symtab)
    {
        SYMfile<<it.first<<"      :    "<<it.second<<endl;
    }
    SYMfile.close();
 
    pass2();
 
    return 0;
}

/*    // now pass 2
    // using the intermeditate file 
    ifstream readfile("sample_intermediate.txt.txt");
    // Use a while loop together with the getline() function to read the file line by line

    while (getline(readfile,line))
    {
            cout<<line<<endl;
    }
     // Close the file
    readfile.close();*/

