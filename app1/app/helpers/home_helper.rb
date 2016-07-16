module HomeHelper

	def mostrar_image(name, size)
		image_tag(name, :size => size)
	end

	def hay_banner?
		if content_for?(:imagen)
			return true
		end
	end

end
