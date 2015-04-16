module PersonasHelper
  def empty_or_full_heart(guide)
    if persona.woman_wizard
      persona.guide.likes > 0 ? "Heart-Red.png" : "Heart-Red-Outlined-17.png"
    elsif persona.company_wizard
      persona.guide.likes > 0 ? "Heart-Blue.png" : "Heart-Blue-Outlined-17.png"
    elsif persona.supporter_wizard
      persona.guide.likes > 0 ? "Heart-Green.png" : "Heart-Green-Outlined-17.png"
    end
  end
end
