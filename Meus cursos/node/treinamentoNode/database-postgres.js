import {randomUUID} from 'node:crypto'
import {sql} from './db.js'

export class DatabasePostgres {

    async list(search ) {
        let videos 
   
          if(search){
            videos = await sql`select *from videos where title ilike ${'%'+ search +'%'}`
             
         } else { 
         
            videos = await sql`select *from videos `
         }
                 return videos
                        }

  async create(video){
       const videoId = randomUUID()
        
       const{title, description,duration,}= video
   
       await sql`insert into videos (id,title, description,duration) VALUES (${videoId},${title},${description},${duration})`
    }

    async update(Id, video){
    

    const{title, description,duration,}= video

    await sql`update videos set title = ${title}, description=${description},duration= ${duration} WHERE id = ${Id}`
   }

   async delete (Id){
    await sql`delete from videos where id = ${Id}`
    }

    
}