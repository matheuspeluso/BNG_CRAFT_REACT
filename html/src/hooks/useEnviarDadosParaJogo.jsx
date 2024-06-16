import { useCallback } from 'react';

const useEnviarDadosParaJogo = () => {
  const enviarDadosParaoJogo = useCallback(async (path, dados) => {
    try {
      let config = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(dados),
      };

      // Substitua 'https://nome-do-seu-servidor/' pelo seu endpoint real
      const response = await fetch(`https://${GetParentResourceName()}/${path}`, config);
      if (!response.ok) {
        throw new Error('Erro ao enviar dados para o jogo');
      }
      const data = await response.json();
      console.log('Dados enviados com sucesso:', data);
      // Retornando os dados se necessário
      return data;
    } catch (error) {
      console.error('Erro durante o envio dos dados:', error);
      // Tratamento de erro, lançar uma exceção ou tratar de outra forma
      throw error; // Lança o erro para que o componente que usa o hook possa capturá-lo
    }
  }, []);

  return enviarDadosParaoJogo;
};

export default useEnviarDadosParaJogo;
