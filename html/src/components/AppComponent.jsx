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
      <div className={styles.container_pai}>
        <div className= {styles.container}>
          <div className={styles.nui}>
            <Title/>
            <CardItem nomeItem={'Ak-47'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251315557630869524/WEAPON_ASSAULTRIFLE_MK2.png?ex=66701c2d&is=666ecaad&hm=dc2ac969b776f0b9ff65603e06cf9e22e114c13278aeeebd3bc1cb8afe252685&'/>
            <CardItem nomeItem={'Pistol_mk2'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251324442194214922/WEAPON_PISTOL_MK2.png?ex=66702473&is=666ed2f3&hm=6dce9cae1068b6489f086d33b1a12d561df2f40b833f7ac656fc865289d6ca07&'/>
            <CardItem nomeItem={'Munição de 9mm'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251947725767970927/ammo-9.png?ex=66706ead&is=666f1d2d&hm=5485cfe6c14240a48dcb79cf5f1d411db220a2c249a0317ea61963c81c965beb&'/>
            <CardItem nomeItem={'Munição de Rifle'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1252032494673330327/ammo-rifle2.png?ex=6670bda0&is=666f6c20&hm=7eee87961895b857cf205135df9972f22b7db96dd1a49e64d1137365e73292bf&'/>
            <CardItem nomeItem={'Submetralhadora'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1252036208456896564/WEAPON_SMG.png?ex=6670c115&is=666f6f95&hm=4e12f752b5228df38178ac5b45fb19f00bd93f30df58a67c49b8b915bbd71569&'/>
            <CardItem nomeItem={'Lockpick'} imagem = 'https://cdn.discordapp.com/attachments/1240421138887213108/1249207739708608512/lockpick.png?ex=6671ab9e&is=66705a1e&hm=42bddde90e425234eef9a87eb95c3caacf7729db33ffbd085ee747a79f747e8f&'/>
            <button className={styles.btn_closeNUI} onClick={()=> closeNui()}>Fechar Nui</button>
          </div>
      </div>
      </div>
      
    )
  }
}

export default AppComponent