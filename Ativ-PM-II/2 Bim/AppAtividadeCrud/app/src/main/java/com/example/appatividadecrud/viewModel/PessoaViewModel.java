package com.example.appatividadecrud.viewModel;

public class PessoaViewModel (private val repository: Repository): ViewModel {
fun getPessoa() = repository.getAlLpessoa().asLiveData(viewModelScape.coroutineContext)

        fun upsertPessoa(pessoa:Pessoa){
         viewModelScape.launch{
          repository.upsertPessoa(pessoa)
           }
        }
        fun deletePessoa(pessoa:Pessoa){
        viewModelScape.launch{
        repository.upsertPessoa(pessoa)
        }
    }
}
