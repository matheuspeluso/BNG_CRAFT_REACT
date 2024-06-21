import React from 'react';
import styles from './CardItem.module.css';

const CardItem = (props) => {
  
  function enviarDadosParaoJogo(path, dados) {
    let config = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json; charset=UTF-8' },
      body: JSON.stringify(dados)
    };
    fetch(`https://${GetParentResourceName()}/${path}`, config);
  }

  function retornaLista() {
    // Pegando os itens do sessionStorage
    let dados = JSON.parse(sessionStorage.getItem('itensScript'));
    const item = dados[props.nomeItem];

    if (item) {
      return (
        <ul className={styles.ul_box}>
          {item.ingredientesPt.map((ingrediente, index) => (
            <li className={styles.li_item} key={index}>
              {`${ingrediente.quantidade} de ${ingrediente.item}`} {/* Exibe quantidade e item */}
            </li>
          ))}
        </ul>
      );
    } else {
      return <p>Item não encontrado</p>;
    }
  }

  function craftar(nomeItem) {
    enviarDadosParaoJogo('itemCraft', { item: nomeItem });
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
