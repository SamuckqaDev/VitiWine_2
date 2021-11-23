function cadastrar() {
  var nomeVar = ipt_nome.value;
  var cnpjVar = ipt_cnpj.value;
  var celularVar = ipt_tele.value;
  var emailVar = ipt_email1.value ;
  var senhaVar = ipt_senha1.value;

  if (
    nomeVar == "" ||
    emailVar == "" ||
    senhaVar == "" ||
    celularVar == "" ||
    cnpjVar == ""
  ) {
    window.alert("Preencha todos os campos para prosseguir!");
    if (nomeVar == "") {
      console.log("nome está em branco");
    }
    if (emailVar == "") {
      console.log("email está em branco");
    }
    if (senhaVar == "") {
      console.log("senha está em branco");
    }
    if (celularVar == "") {
      console.log("telefone esta em branco");
    }
    if (cnpjVar == "") {
      console.log("cnpj em branco");
    }
    return false;
  }

  if (emailVar.indexOf("@") == -1 || emailVar.indexOf(".com") == -1) {
    window.alert("Ops, e-mail inválido! Verifique e tente novamente.");
    return false;
  }

  fetch("/empresa/cadastrar", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      nomeServer: nomeVar,
      cnpjServer: cnpjVar,
      celularServer: celularVar,
      emailServer: emailVar,
      senhaServer: senhaVar,
    }),
  })
    .then(function (resposta) {
      console.log("resposta: ", resposta);

      if (resposta.ok) {
        window.alert("Cadastro realizado com sucesso!");
        Modal.close();
      } else {
        throw "Houve um erro ao tentar realizar o cadastro!";
      }
    })
    .catch(function (resposta) {
      console.log(`#ERRO: ${resposta}`);
    });

  return false;
}

const Modal = {
  open() {
    document.querySelector(".modal-overlay").classList.add("active");
  },
  close() {
    document.querySelector(".modal-overlay").classList.remove("active");
  },
};
