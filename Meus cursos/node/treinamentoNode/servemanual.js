
//CRIANDO UM SERVIDOR MANUAL

import { createServer } from 'node:http'
import open from 'open'
// request serve para eu receber dados 
//o response ele serve como um objeto para trazer o resultado para quem estiver chamando 
const serve = createServer((request, responde)=>{
    responde.write('Teste de Serve')

    return responde.end()
})

serve.listen(3334, () => {
    const port = serve.address().port;
    console.log('Servidor rodando na porta 3334');
    //open(`http://localhost:${port}`);
});
//eNE89vxgiTSR