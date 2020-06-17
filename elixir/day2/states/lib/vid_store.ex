defmodule VideoStore do
	use StateMachine
  state :available,
    rent: [ to: :rented, calls: [ &VidStore.renting/1 ]]

	state :rented,
		return: [ to: :available, calls: [ &VidStore.returning/1 ]], 
		lose: [ to: :lost, calls: [ &VidStore.losing/1 ]]
	
	state :lost, []
end
