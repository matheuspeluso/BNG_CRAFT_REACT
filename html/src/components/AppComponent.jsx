import React, { useEffect, useState } from 'react';
import styles from './AppComponent.module.css';
import Title from './Title';
import CardItem from './CardItem';

const AppComponent = () => {
  const [visible, setVisible] = useState(false);

  function enviarDadosParaoJogo(path, dados) {
    let config = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json; charset=UTF-8' },
      body: JSON.stringify(dados)
    };
    fetch(`https://${GetParentResourceName()}/${path}`, config);
  }

  function closeNui() {
    setVisible(false);
    enviarDadosParaoJogo('fecharTela');
  }

  useEffect(() => {
    const handleMessage = (event) => {
      if (event.data.type === 'open') {
        setVisible(true);
        // enviando itens por sessionStorage
        sessionStorage.setItem('itensScript',JSON.stringify(event.data.itens))
      }
    };

    const handleKeyDown = (event) => {
      if (event.key === 'Escape') {
        closeNui();
      }
    };

    window.addEventListener('message', handleMessage);
    window.addEventListener('keydown', handleKeyDown);

    return () => {
      window.removeEventListener('message', handleMessage);
      window.removeEventListener('keydown', handleKeyDown);
    };
  }, []);

  if (visible) {
    return (
      <div className={styles.container_pai}>
        <div className={styles.container}>
          <div className={styles.nui}>
            <Title />
            <CardItem nomeItem={'WEAPON_ASSAULTRIFLE'}/>
            <CardItem nomeItem={'WEAPON_PISTOL_MK2'}/>
            <CardItem nomeItem={'ammo_9'}/>
            <CardItem nomeItem={'ammo_rifle2'}/>
            <CardItem nomeItem={'WEAPON_SMG'} />
            <CardItem nomeItem={'lockpick'}/>
            <button className={styles.btn_closeNUI} onClick={closeNui}>Fechar Nui</button>
          </div>
        </div>
      </div>
    );
  }

  return null;
};

export default AppComponent;
