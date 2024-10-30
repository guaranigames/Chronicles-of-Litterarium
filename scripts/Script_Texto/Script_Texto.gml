function scr_textos(){
	switch npc_nome {
		
		case "PlayerBegin":
			texto[0] = "Player: \nNossa! Todo mundo já foi embora, eu devia ter prestado mais atenção nas aulas de literatura.";
			texto[1] = "Player: \nEu vou me ferrar nessa prova, preciso continuar...";
			texto[2] = "Player: \n... (continuar) ... (continuar) ...";
			texto[3] = "Player: \n...";
			texto[4] = "Player: \n...";
		break;
		
		case "Dinis":
			texto[0] = "Player: \nPor favor, eu não sabia que essas terras eram suas, se não eu nem havia vindo aqui.";
			texto[1] = "Dom Dinis: \nBasta! Eu que falo aqui. Primeiro, a que reino que pertences?";
			texto[2] = "Player: \nÉ… Reino? Eu sou do Itaim Paulista, Vossa Majestade.";
			texto[3] = "Dom Dinis: \nItaim Paulista??!?..., Bom, deve ser um reino muito pequeno comparado ao grande reino de Portugal";
			texto[4] = "Player: \nEspera..., você é Dom Dinis, o Rei Trovador?";
			texto[5] = "Dom Dinis: \nPois bem.";
			texto[6] = "Player: \nEu estava estudando sobre suas cantigas do Trovadorismo.";
			texto[7] = "Dom Dinis: \nEntão tu conhecestes minhas cantigas?";
			texto[8] = "Player: \nClaro, eu estava estudando tudo sobre o Trovadorismo até eu cochilar, e bom, vir parar aqui.";
			texto[9] = "Dom Dinis: \nAté que enfim um admirador de minha excelentíssima arte! Eu posso lhe ajudar então, meu nobre.";
			texto[10] = "Dom Dinis: \nSe tu comprovar-me que conhece tudo sobre as cantigas eu lhe ajudo a voltar ao seu Reino do Itaim Paulista!";
			texto[11] = "Player: \nBom...., eu ainda não estudei muito bem, mas eu aceito a proposta.";
			texto[12] = "Dom Dinis: \nMaravilha! Meus funcionários lhe darão os equipamentos necessários, não se preocupe eu lhe guiarei durante o seu caminho. Boa sorte, meu jovem!";
		break;
		
		case "Barman":
			texto[0] = "Player: \nCom licença, eu estou procurando informações sobre cantigas.";
			texto[1] = "Barman: \nCantiga é coisa do jogral. Melhor conversar com ele...";
			texto[2] = "Player: \nJogral?";
			texto[3] = "Barman: \nSim..., Jogral é aquele que recita as cantigas, tipo um trovador, só que mais pobre.";
			texto[4] = "Player: \nEntendi. Valeu...";
		break;
			
		case "Emilio":
			texto[0] = "Player: \nBom dia, senhor. É você que é o especialista em cantigas por aqui?";
			texto[1] = "Emilio: \nPois não, meu caro nobre? Sou eu mesmo, me chamo Emílio.";
			texto[2] = "Player: \nEu tô precisando de uma ajudinha, Emílio. Preciso aprender sobre cantigas trovadorescas. Será que você pode me ajudar?";
			texto[3] = "Emilio: \nSe ficar depois para a minha apresentação, CLARO que eu ajudo. Pra começar vamos falar sobre as cantigas de maldizer e escárnio.";
			texto[4] = "Emilio: \nAs duas servem para criticar alguém, falar mal sabe? Mas tem um fator que as diferencia, enquanto a de ESCÁRNIO não identifica de quem está falando mal a de MALDIZER identifica e diz o nome da pessoa.";
			texto[5] = "Player: \nHummm, entendi mas….";
			texto[6] = "Emilio: \nAgora não dá mais tempo. Chegou a hora da minha apresentação. Vamos ver se você aprendeu.";
		break;
		
		case "Agatha":
			texto[0] = "Player: \nBoa tarde, com licença?";
			texto[1] = "Agatha: \nOra, quem és tu? E o que faz em minha casa?";
			texto[2] = "Player: \nÉ… Eu sou um conhecido do seu marido.";
			texto[3] = "Agatha: \nDo meu marido? Onde está ele? Ele está bem?";
			texto[4] = "Player: \nÉ, acho que está, se não tiver ainda tomado um soco no rosto.";
			texto[5] = "Agatha: \nÓ meu Deus!!!";
			texto[6] = "Player: \nComplicado né, mas bem, eu vim aqui pra falar com você sobre cantigas de amor.";
			texto[7] = "Agatha: \nCantigas de Amor? Eu não sei o que é isso";
			texto[8] = "Player: \nNão se finja de desentendida, eu sei que você vêm recebendo cantigas de amor do jogral da taverna";
			texto[9] = "Agatha: \n...";
			texto[10] = "Player: \nOlha..., eu não tenho nada a ver com isso, só quero que você me ensine sobre como são as cantigas de amor e eu prometo que não espalharei isso para ninguém.";
			texto[11] = "Agatha: \nSim, sim eu lhe ajudo. Por favor, pegue ali na minha cômoda algumas cantigas que eu tenho";
		break;
		
		case "Bispo":
			texto[0] = "Player: \nBoa tarde, com licença? Você é o bispo D. Gonçalo Pereira?";
			texto[1] = "Dom Gonçalo: \nOlá, meu rapaz. O próprio. O que queres?";
			texto[2] = "Player: \nEu vim mandado pelo rei Dom Dinis para aprender sobre cantigas, no caso a de loor. E eu ouvi dizer que você gosta disso.";
			texto[3] = "Dom Gonçalo: \nDom Dinis é um grande amigo meu, irei ajudar com certeza.";
			texto[4] = "Player: \nÓtimo, poderia o senhor mostrá-la pra mim?";
			texto[5] = "Dom Gonçalo: \nClaro, aqui está a cantiga que você tanto deseja...";
			texto[6] = "Player: \nÉ tipo uma música de louvor cristão dedicada a figuras religiosas, vocês cantam nas missas?";
			texto[7] = "Dom Gonçalo: \nÉ uma música de louvor sacro e não profano, porém não está incluso na Liturgia, pois é uma música do trovadorismo e não é canto gregoriano.";
			texto[8] = "Player: \nObrigado, tu sabes onde posso encontrar a última cantiga: a do amigo?";
			texto[9] = "Dom Gonçalo: \nNão, mas vá até a praça em frente dessa igreja, lá passa todo tipo de gente, tome cuidado";
			texto[10] = "Player: \nCerto, obrigado bispo!";
		break;
		
		case "Cavaleiro":
			texto[0] = "Player: \nVocê sabe de alguém faz a cantiga do Amigo?";
			texto[1] = "Cavaleiro: \nSim, eu mesmo";
			texto[2] = "Player: \nSério mesmo, não estou acreditando";
			texto[3] = "Cavaleiro: \nAh, realmente, não é pra tanto.";
			texto[4] = "Cavaleiro: \n...";
			texto[5] = "Cavaleiro: \nMentira, é sim. Sou o melhor de toda Lisboa.";
			texto[6] = "Player: \nPor isso que eu vim até o senhor. Preciso que me ensine sobre a cantiga de amigo urgentemente.";
			texto[7] = "Cavaleiro: \nMas o que eu ganho com isso?";
			texto[8] = "Player: \nEu faço o que você quiser";
			texto[9] = "Cavaleiro: \nUma luta de honra, que tal? Com espadas, ali na arena.";
			texto[10] = "Player: \nEu nunca lutei com espadas…";
			texto[11] = "Cavaleiro: \nEste é meu preço.";
			texto[12] = "Player: \nTudo bem, eu topo.";
			texto[13] = "Cavaleiro: \nIsso. Bom, a cantiga de amigo é bem simples, ela é bem parecida com a de amor.";
			texto[14] = "Cavaleiro: \nA maior diferença que vai ter será na mudança do receptor e do interlocutor. Enquanto na de amor, é de um homem para uma mulher, a de amigo é de uma mulher para um homem.";
			texto[15] = "Cavaleiro: \nMas não esqueça,  é apenas o eu lírico que é feminino, o autor das cantigas sempre serão homens!";
			texto[16] = "Player: \nEntão é um homem que escreve se passando por uma mulher?";
			texto[17] = "Cavaleiro: \nCorreto. E também normalmente cantigas de amigo se passam em lugares pastoris, como campos ou no mar, diferente da de amor que se passa na corte.";
			texto[18] = "Player: \nCerto, só isso?";
			texto[19] = "Cavaleiro: \nEm resumo, sim. Agora vamos a nossa luta. Me acompanhe.";
		break;
	}
}