require_relative 'observer_impl'

class TelescopScheduler
	include Observable

	def initialize
		@observer_list = []
	end

	def add_viewer(viewer)
		@observer_list << viewer
	end
end
