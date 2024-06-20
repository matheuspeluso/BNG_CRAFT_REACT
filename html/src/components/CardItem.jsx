import React, { useState } from 'react';
import styles from './CardItem.module.css'
// import useEnviarDadosParaJogo from '../hooks/useEnviarDadosParaJogo';

const CardItem = (props) => {
  const [itens, setItens] = useState({
    'Ak-47': {
      ingredientes: [
        "30 und de Aço",
        "10 und de Plastico",
        "25 und de Ferro"
      ]
    },
    'Pistol_mk2': {
      ingredientes: [
        "20 und de Aço",
        "5 und de Plastico",
        "15 und de Ferro"
      ]
    },
    'Submetralhadora': { //WEAPON_SMG
      ingredientes: [
        "20 und de Aço",
        "10 und de Plastico",
        "15 und de Ferro"
      ]
    },
    'Munição de 9mm': {
      ingredientes: [
        "12 und de Aço",
        "6 und de Cobre"
      ]
    },

    'Munição de Rifle': {
      ingredientes: [
        "12 und de Aço",
        "6 und de Cobre"
      ]
    },
    'Lockpick': {
      ingredientes: [
        "5 und de Aço",
        "1 und de Cobre"
      ]
    },
  });

  function enviarDadosParaoJogo(path, dados) {
    let config = {
        method: 'POST', headers: { 'Content-Type': 'application/json; charset=UTF-8', },
        body: JSON.stringify(dados)
    }
    fetch(`https://${GetParentResourceName()}/${path}`, config)
  }

  function retornaLista() {
    const item = itens[props.nomeItem];
    if (item) {
      return (
        <ul className={styles.ul_box}>
          {item.ingredientes.map((ingrediente, index) => (
            <li className={styles.li_item} key={index}>{ingrediente}</li>
          ))}
        </ul>
      );
    } else {
      return <p>Item não encontrado</p>;
    }
  }

  function craftar(nomeItem) {
    let name = nomeItem
    enviarDadosParaoJogo('itemCraft',{item: name});
  }


  return (
    <div className={styles.container}>
      <div className={styles.box_img}>
        <img className={styles.img} src={props.imagem} alt={props.nomeItem} />
      </div>

      <div className={styles.box_craft}>
        <div className={styles.header}>
          <h3>{props.nomeItem}</h3>
          <button onClick={() => craftar(props.nomeItem)} className={styles.btn_montar}>MONTAR</button>
        </div>
        <div className={styles.ingredintes}>
          {retornaLista()}
        </div>
      </div>
    </div>
  );
};

export default CardItem;
