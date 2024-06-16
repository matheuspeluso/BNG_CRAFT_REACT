import React from 'react'
import { useState } from 'react'
import styles from './AppComponent.module.css'
import Title from './Title'
import CardItem from './CardItem'
// import useEnviarDadosParaJogo from '../hooks/useEnviarDadosParaJogo'



const AppComponent = () => {

  const [visible,setVisible] = useState(false)

  function enviarDadosParaoJogo(path, dados) {
    let config = {
        method: 'POST', headers: { 'Content-Type': 'application/json; charset=UTF-8', },
        body: JSON.stringify(dados)
    }
    fetch(`https://${GetParentResourceName()}/${path}`, config)
  }

  function closeNui () {
    setVisible(false)
    enviarDadosParaoJogo('fecharTela')
  }

  window.addEventListener('message', (event) => {
    if (event.data.type === 'open') {
      setVisible(true)
    }
  });

  if (visible){
    return(
      <div className= {styles.container}>
          <div className={styles.nui}>
            <Title/>
            <CardItem nomeItem={'Ak-47'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251315557630869524/WEAPON_ASSAULTRIFLE_MK2.png?ex=666e21ed&is=666cd06d&hm=86de6a3b56a8facf243d639b6ce65fa69242990394acf8056d4544054fb77aa4&'/>
            <CardItem nomeItem={'Pistol_mk2'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251324442194214922/WEAPON_PISTOL_MK2.png?ex=666e2a33&is=666cd8b3&hm=9556140f3f730795ebc0afdbc4d25fa7b0edfe8768ebb2059dd05173c05a51be&'/>
            <button onClick={()=> closeNui()}>Fechar Nui</button>
          </div>
      </div>
      
    )
  }
}

export default AppComponent