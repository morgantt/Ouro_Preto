module PropostasHelper
	
def hist_prepare
      
      @hist.proposta_id   = @proposta.id
      @hist.numero        = @proposta.numero
      @hist.nome_status   = @proposta.status
      @hist.nome_status   = @proposta.nome_status
      @hist.data_status   = @proposta.data_status
      @hist.corretor_id   = @proposta.corretor_id
      @hist.observacao    = @proposta.observacao
      @hist.operadora     = @proposta.operadora
    end



end
