import * as _ from 'lodash'
import { environment } from '../environments/environment.coffee'

export default
	name: "location"
	props:
		originalLocation: type: Object
		callback: type: Function
		maxRating: type: Number

	data: ->
		title: ''
		location: _.cloneDeep @originalLocation
		error: ''

	methods:
		save: () ->
			@$http.post environment.locationUrl + @originalLocation.id, {
					body: @location
				}
				.then () =>
					@$emit('close')
					@callback()
				.catch (e) =>
					console.log e
					@error = 'An error occurred. Location was not saved.'

		close: ->
			if _.isEqual(@location, @originalLocation) or confirm 'Unsaved changes will be lost!'
				@$emit('close')

	created: ->
		@title = @location?.name || 'New location'
