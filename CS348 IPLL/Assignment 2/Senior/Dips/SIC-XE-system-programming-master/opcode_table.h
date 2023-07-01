#ifndef __OPCODE_TABLE_H__
#define __OPCODE_TABLE_H__

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_LEN 1001

typedef struct _hash_node
{
	int opcode;
	char mnemonic[MAX_LEN];
	int format;
	struct _hash_node* next;
} hash_node;

void make_table();

void clear_table();

void add_table(int opcode, char mnemonic[MAX_LEN], int format);

int get_hash(char key[MAX_LEN]);

int get_opcode(char key[MAX_LEN]);

int get_format(char key[MAX_LEN]);

int get_format_by_opcode(int opcode);

void opcode_(int opcode);

void opcode_list_();

#endif
