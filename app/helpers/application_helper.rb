module ApplicationHelper
  # Return title on a per page basis.
  def title
    base_title  = "Controle de Propostas"
    if @title.nil?
      base_title
  else
    "#{base_title} | #{@title}"
   end
  end

  def logo
    image_tag("logo.png", :alt => "Ouro Preto", :class => "round")
  end



end

