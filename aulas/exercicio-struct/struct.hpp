#if !defined(STRUCT_HPP)
#define STRUCT_HPP

#include<iostream>
#include<string>
#include<vector>

using namespace std;

typedef struct T_data{
    int dia, mes, ano;
} Data;

typedef struct T_cliente{
    string nome;
    string cpf;
} Cliente;

#endif 
