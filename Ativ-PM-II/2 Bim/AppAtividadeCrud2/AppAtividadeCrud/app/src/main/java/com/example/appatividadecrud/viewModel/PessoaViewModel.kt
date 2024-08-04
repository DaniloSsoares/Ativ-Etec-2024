package com.example.appatividadecrud.viewModel

import androidx.lifecycle.ViewModel
import com.example.appatividadecrud.RoomDB.Pessoa
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch

class PessoaViewModel(private val repository: Repository): ViewModel {
    fun getPessoa() = repository.getAllPessoa().asLiveData(viewModelScope.coroutineContext)

    fun upsertPessoa(pessoa: Pessoa){
        viewModelScope.launch {
            repository.upsertPessoa(pessoa)
        }
    }

    fun deletePessoa(pessoa: Pessoa) {
        viewModelScope.launch {
            repository.deletePessoa(pessoa)
        }
    }
}