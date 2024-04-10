

//CRIANDO UM SERVIDOR AUTOMATICO
import {fastify} from 'fastify'
//import {DatabaseMemory} from './databasememorie.js'
import {DatabasePostgres} from './database-postgres.js'


//GET, buscar uma informação
//POST criação de algo
//PUT Alteração
//DELETE Deletar algo
//PATCH alterar somente um recurso
//HEAD
//OPTIONS

//USANDO BANCO DE DADOS DE MEMORIA
//const database = new DatabaseMemory()

const server =  fastify()

const database = new DatabasePostgres()

server.post('/video',async(request, reply) => {
    const{ title,description,duration } = request.body
        await database.create({
            title, 
            description ,
            duration,
           } 
            )
   
    //o estatus code consigo ver se esta funcionando no caso 201 dis que algo foi criado 
            console.log(database.request)
               return reply.status(201).send()
               }
                 )


//POST http://localhost:333/video

//route Parameter

     //Criando varias rotas em um servidor
         server.get('/video',async(request) => {
            const search = request.query.search
    //console.log(search)
            const video = await database.list(search)
            //console.log(video)
                 return video
                 }
                    )

         server.put('/video/:id',async (request,reply) => {
            const videoId = request.params.id 
            
            const{ title,description,duration }= request.body
            await database.update(videoId, {
                    title,
                    description,
                    duration,
                }
                  )
    //o 204 ela quer dizr que ela recebeu o resultado mas que ela não tem conteudo na resposta
                return reply.status(204).send()

            }
              )

           server.delete('/video/:id', async(request, reply) => {
               const videoId= request.params.id

                 await database.delete(videoId)

               return reply.status(204).send
              }
                )

      server.listen({
           port: process.env.PORT ?? 3333,})


