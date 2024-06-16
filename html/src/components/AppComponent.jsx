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
            <CardItem nomeItem={'Ak-47'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251315557630869524/WEAPON_ASSAULTRIFLE_MK2.png?ex=66701c2d&is=666ecaad&hm=dc2ac969b776f0b9ff65603e06cf9e22e114c13278aeeebd3bc1cb8afe252685&'/>
            <CardItem nomeItem={'Pistol_mk2'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251324442194214922/WEAPON_PISTOL_MK2.png?ex=66702473&is=666ed2f3&hm=6dce9cae1068b6489f086d33b1a12d561df2f40b833f7ac656fc865289d6ca07&'/>
            <CardItem nomeItem={'Munição de 9mm'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251947725767970927/ammo-9.png?ex=66706ead&is=666f1d2d&hm=5485cfe6c14240a48dcb79cf5f1d411db220a2c249a0317ea61963c81c965beb&'/>
            <button className={styles.btn_closeNUI} onClick={()=> closeNui()}>Fechar Nui</button>
          </div>
      </div>
      
    )
  }
}

export default AppComponent