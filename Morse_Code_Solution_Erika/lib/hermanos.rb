
def encuentra_al_perro(nombre)
  hermanos = { "Oscar" => "Chicharito", "Dany" => "Zizou", "Erika" => "Puffy"}
  hermanos[nombre]

end

def encuentra_al_perro(perro)
  hermanos = { "Oscar" => "Chicharito", "Dany" => "Zizou", "Erika" => "Puffy"}
  encontre_al_perro = false

  hermanos.each do |key, value|
    if value == perro
      puts "Encontre a tu perro, el dueno es #{key}"
      encontre_al_perro = true
    end
  end

  if !encontre_al_perro
    puts "No encontre a tu perro"
  end

end
