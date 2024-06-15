import React, { useState } from 'react';

const CardItem = (props) => {
  const [itens, setItens] = useState({
    'Ak-47': {
      ingredientes: [
       ["30 und de Aço","10 und de Plastico", "25 und de Ferro"]
      ]
    },
    'Pistol_mk2': {
      ingredientes: [
        ["20 und de Aço","5 und de Plastico", "15 und de Ferro"]
      ]
    }
  });

  function retornaLista() {
    const item = itens[props.nomeItem];
    if (item) {
      return (
        <ul>
          {item.ingredientes.map((ingrediente, index) => (
            <li key={index}>{ingrediente}</li>
          ))}
        </ul>
      );
    } else {
      return <p>Item não encontrado</p>;
    }
  }

  return (
    <div>
      <div className="img">
        <img src={props.imagem} alt='AK-47' />
      </div>

      <div className="box_craft">
        <div className="header">
          <h3>props.nomeItem</h3>
        </div>
        <div className="ingredientes">
          {retornaLista()}
        </div>
      </div>
    </div>
  );
};

export default CardItem;
