var ctxLine = document.getElementById("chartLine").getContext("2d");
  var rotulosLine = ["07:00", "10:00", "13:00", "16:00", "19:00", "22:00"];
  var dataLine = [21, 23, 27, 19, 20, 19];
  var configLine = {
    type: 'line',
    data: {
      labels: rotulosLine, // referenciando a variável de rótulos (labels) para o gráfico de linha
      datasets: [
        {
          label: 'Temperatura Diária',
          data: dataLine, // referenciando a variável de dados para o gráfico de linha
          backgroundColor: [
            '#FF000022',
            '#FFFF0022',
            '#FF00FF22',
            '#00FFFF22',
            '#99009922',
            '#99990022',
            '#F0F00022',
            '#65002222',
          ],
          borderColor: [
            '#FF0000',
            '#FFFF00',
            '#FF00FF',
            '#00FFFF',
            '#990099',
            '#999900',
            '#F0F000',
            '#650022',
          ],
          borderWidth: 1
        }
      ]
    },
    options: {
      // por padrão, vem como 'true', e faz com que o gráfico se 'mantenha com o mesmo aspecto de proporção', não ficando responsivo 
      maintainAspectRatio: false,
      scales: {
        y: {
          beginAtZero: true,
        }
      }
    }
  }
  var ax_chartLine = new Chart(ctxLine, configLine); // criando o gráfico, chamando o new Chart da biblioteca, passando o contexto e as configurações

