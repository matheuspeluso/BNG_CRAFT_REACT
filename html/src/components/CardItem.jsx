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

  
  // Acessando diretamente as propriedades do item
  const dados = JSON.parse(sessionStorage.getItem('itensScript'));
  const item = dados[props.nomeItem];
  const nomeItem2 = item.name; // Acessando o nome correto do item
  const imagem = item.img; // Acessando a imagem correta do item
  
  function craftar(nomeItem2) {
    enviarDadosParaoJogo('itemCraft', { item: nomeItem2 });
  }

  return (
    <div className={styles.container}>
      <div className={styles.box_img}>
        <img className={styles.img} src={imagem} alt={nomeItem2} /> {/* Utilizando a imagem correta */}
      </div>

      <div className={styles.box_craft}>
        <div className={styles.header}>
          <h3>{nomeItem2}</h3> {/* Utilizando o nome correto do item */}
          <button onClick={() => craftar(nomeItem2)} className={styles.btn_montar}>MONTAR</button>
        </div>
        <div className={styles.ingredintes}>
          {retornaLista()}
        </div>
      </div>
    </div>
  );
};

export default CardItem;
