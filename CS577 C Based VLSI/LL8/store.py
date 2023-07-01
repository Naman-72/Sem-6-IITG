from z3 import *

s = Solver()

def arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12):
    
    
    op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28=BitVecs('op1 op2 op3 op4 op5 op6 op7 op8 op9 op10 op11 op12 op13 op14 op15 op16 op17 op18 op19 op20 op21 op22 op23 op24 op25 op26 op27 op28',32)

    o1,o2,o3,o4 = BitVecs('o1 o2 o3 o4',32) 

    op1 = GG1 * i1;
    op2 = GG2 * i2;
    op3 = G1 * i2;
    op4 = G2 * i1;

    exp = G1 > 10
    op5 = If(exp,G1*i3 + GG1,i3*i4)
    op6 = If(exp,G1*i3 + GG1 - op4,i3*i4 - op3)

    tempOp2 = BitVec('tempOp2',32)
    tempOp2 = op2
    exp = Xor((op5 < op4) , key7)
    op6 = If(exp,G2*i4-i3,op6)
    op2 = If(exp,op2,2*op4-op2)
    op17 = If(exp,G2*i4-i3-G2, (2*tempOp2 - 3*op4))

    op7 = G1 * i4;
    op8 = G2 * i3;

    op9  = op1 + op2;
    op10 = op3 + op4;
    op10 = op10/key8;
    op11 = op4 + op6;
    op12 = op7 + op8;
    op12 = op12 ^ key9;

    op13 = op11 + G1;
    op13 = op13 +key10;
    o1   = op13 * key1;
    op14 = i6 + op12;
    o2   = op14 + key2;
    op15 = G1 * op14;
    op16 = op13 * G2;

    exp = (op13==op14)
    op17 = If(exp,op17*op11,op17)
    op14 = If(exp,op14 - op17,op13*G1)
    op15 = If(exp,op15 + op17,op15)

    op18 = op14 * G2;
    op19 = op15 * op16;
    op20 = op17 + op18;
    op21 = If(key5 , G2 * op19 , G1 * op20);
    op22 = If(key6 , op19 * G2 , op14 * G1);
    op22 = op22 & key11;
    op23 = op19 * G1;
    op24 = op20 * G2;
    op24 = op24 /key12;
    op25 = op21 + op22;
    op26 = op23 + op24;
    op27 = op9 + op25+key3;
    o3   = op27;
    op28 = op10 + op26;
    o4   = op28 +key4;

    arr = [o1,o2,o3,o4]
    return arr


bv_sort = BitVecSort(32)
upper_bound = BitVecVal(2**31 - 1, bv_sort)
i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2 = BitVecs('i1 i2 i3 i4 i6 G1 G2 G3 G4 GG1 GG2',32)
i1itr1,i2itr1,i3itr1,i4itr1,i6itr1,G1itr1,G2itr1,G3itr1,G4itr1,GG1itr1,GG2itr1 = BitVecs('i1itr1 i2itr1 i3itr1 i4itr1 i6itr1 G1itr1 G2itr1 G3itr1 G4itr1 GG1itr1 GG2itr1',32)
i1itr2,i2itr2,i3itr2,i4itr2,i6itr2,G1itr2,G2itr2,G3itr2,G4itr2,GG1itr2,GG2itr2 = BitVecs('i1itr2 i2itr2 i3itr2 i4itr2 i6itr2 G1itr2 G2itr2 G3itr2 G4itr2 GG1itr2 GG2itr2',32)
key11,key12,key13,key14 = BitVecs('key11 key12 key13 key14',32)
key15,key16,key17 = Bools('key15 key16 key17')
key18,key19,key110,key111,key112 = BitVecs('key18 key19 key110 key111 key112',32)    
o11,o12,o13,o14 = BitVecs('o11 o12 o13 o14',32)

key21,key22,key23,key24 = BitVecs('key21 key22 key23 key24',32)
key25,key26,key27 = Bools('key25 key26 key27')
key28,key29,key210,key211,key212 = BitVecs('key28 key29 key210 key211 key212',32)    
o21,o22,o23,o24 = BitVecs('o21 o22 o23 o24',32)

o1itr1,o2itr1,o3itr1,o4itr1 = BitVecs('o1itr1 o2itr1 o3itr1 o4itr1',32)
o1itr2,o2itr2,o3itr2,o4itr2 = BitVecs('o1itr2 o2itr2 o3itr2 o4itr2',32)

s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key11,key12,key13,key14,key15,key16,key17,key18,key19,key110,key111,key112)[0] == o11)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key11,key12,key13,key14,key15,key16,key17,key18,key19,key110,key111,key112)[1] == o12)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key11,key12,key13,key14,key15,key16,key17,key18,key19,key110,key111,key112)[2] == o13)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key11,key12,key13,key14,key15,key16,key17,key18,key19,key110,key111,key112)[3] == o14)

s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key21,key22,key23,key24,key25,key26,key27,key28,key29,key210,key211,key212)[0] == o21)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key21,key22,key23,key24,key25,key26,key27,key28,key29,key210,key211,key212)[1] == o22)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key21,key22,key23,key24,key25,key26,key27,key28,key29,key210,key211,key212)[2] == o23)
s.add(arf(i1,i2,i3,i4,i6,G1,G2,G3,G4,GG1,GG2,key21,key22,key23,key24,key25,key26,key27,key28,key29,key210,key211,key212)[3] == o24)

#out of bound constraints
s.add(And(i1 <= upper_bound,i1 >=0))
s.add(And(i2 <= upper_bound,i2 >=0))
s.add(And(i3 <= upper_bound,i3 >=0))
s.add(And(i4 <= upper_bound,i4 >=0))
s.add(And(i6 <= upper_bound,i6 >=0))
s.add(And(G1 <= upper_bound,G1 >=0))
s.add(And(G2 <= upper_bound,G2 >=0))
s.add(And(G3 <= upper_bound,G3 >=0))
s.add(And(G4 <= upper_bound,G4 >=0))
s.add(And(GG1 <= upper_bound,GG1 >=0))
s.add(And(GG2 <= upper_bound,GG2 >=0))

s.add(And(o11 <= upper_bound,o11 >=0))
s.add(And(o12 <= upper_bound,o12 >=0))
s.add(And(o13 <= upper_bound,o13 >=0))
s.add(And(o14 <= upper_bound,o14 >=0))
s.add(And(o21 <= upper_bound,o21 >=0))
s.add(And(o22 <= upper_bound,o22 >=0))
s.add(And(o23 <= upper_bound,o23 >=0))
s.add(And(o24 <= upper_bound,o24 >=0))

s.add(And(key11 <= upper_bound,key11 >=0))
s.add(And(key12 <= upper_bound,key12 >=0))
s.add(And(key13 <= upper_bound,key13 >=0))
s.add(And(key14 <= upper_bound,key14 >=0))
s.add(And(key18 <= upper_bound,key18 > 0))
s.add(And(key19 <= upper_bound,key19 >=0))
s.add(And(key110 <= upper_bound,key110 >=0))
s.add(And(key111 <= upper_bound,key111 >=0))
s.add(And(key112 <= upper_bound,key112 > 0))

s.add(And(key21 <= upper_bound,key21 >=0))
s.add(And(key22 <= upper_bound,key22 >=0))
s.add(And(key23 <= upper_bound,key23 >=0))
s.add(And(key24 <= upper_bound,key24 >=0))
s.add(And(key28 <= upper_bound,key28 > 0))
s.add(And(key29 <= upper_bound,key29 >=0))
s.add(And(key210 <= upper_bound,key210 >=0))
s.add(And(key211 <= upper_bound,key211 >=0))
s.add(And(key212 <= upper_bound,key212 > 0))

s.add(Not(And(o11 == o21,o12 == o22,o13 == o23,o14 == o24)))


print(s.check())
m = s.model();

print("--------------DIP--------------")
print(m[i1].as_long(),m[i2].as_long(),m[i3].as_long(),m[i4].as_long(),m[i6].as_long(),
      m[G1].as_long(),m[G2].as_long(),m[G3].as_long(),m[G4].as_long(),m[GG1].as_long(),m[GG2].as_long());

# print("--------------KEYS(set 1)--------------")
# print(m[key11].as_long(),m[key12].as_long(),m[key13].as_long(),m[key14].as_long(),m[key15],m[key16],m[key17],
#        m[key18].as_long(),m[key19].as_long(),m[key110].as_long(),m[key111].as_long(),m[key112].as_long());

# print("--------------KEYS(set 2)--------------")
# print(m[key21].as_long(),m[key22].as_long(),m[key23].as_long(),m[key24].as_long(),m[key25],m[key26],m[key27],
#        m[key28].as_long(),m[key29].as_long(),m[key210].as_long(),m[key211].as_long(),m[key212].as_long());


