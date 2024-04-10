import {randomUUID} from 'node:crypto'
export class DatabaseMemory {
    #video = new Map()
//set ele é paracido com o array do php porem ele não aceita valores iguais e no map ele tem como funçao receber algum valor
//map ele tem como funçãoser um objeto
list(search) {
    //Converte a estrutura que não sao um array em uma array
    //O ENTRIES ELE TEM COMO FUNÇÃO TRAZER O ID 
return Array.from(this.#video.entries())
.map((videoArray)=>{
    const id = videoArray[0]
    const data = videoArray[1]
    return{
        id,
         ...data,
    }
})
.filter(video =>{
    if (search){
        return video.title.includes(search)
    }
    return true
})
}


create(video){
    const videoId = randomUUID()
 this.#video.set(videoId, video)
    }

    update(Id, video){
    this.#video.set(Id,video)
    }

    delete(Id, video){
    this.#video.delete(Id,video)
    }

    
}