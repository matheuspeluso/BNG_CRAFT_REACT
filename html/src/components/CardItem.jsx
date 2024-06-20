import React, { useState } from 'react';
import styles from './CardItem.module.css'
// import useEnviarDadosParaJogo from '../hooks/useEnviarDadosParaJogo';

const CardItem = (props) => {
  // const [itens, setItens] = useState(
  //   sessionStorage.getItem('itensScript')
  // );

  function enviarDadosParaoJogo(path, dados) {
    let config = {
        method: 'POST', headers: { 'Content-Type': 'application/json; charset=UTF-8', },
        body: JSON.stringify(dados)
    }
    fetch(`https://${GetParentResourceName()}/${path}`, config)
  }

  function retornaLista() {
    let dados = JSON.parse(sessionStorage.getItem('itensScript'))
    const item = dados[props.nomeItem];
    console.log('testeee ',JSON.stringify(dados))
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
