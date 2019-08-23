import Location from './Location.vue'
import { environment } from '../environments/environment.coffee'

export default
	name: "locations"
	data: ->
		locations: []
		catalog:
			scala: 0
			maxRating: 0
			questions: []

	computed:
		points: ->
			p = []
			if @locations.length > 0
				for l in @locations
					sum = 0
					for q in l['questions']
						catalogQuestion = @catalog.questions.find (item) -> item['name'] == q['name']
						sum += q['points'] * catalogQuestion['weight'] if catalogQuestion
					sum = (sum / @quotient).toFixed(2)
					p.push(sum)
			p

		maxPoints: ->
			points = 0
			for q in @catalog.questions
				points += q['weight'] * @catalog.maxRating
			points

		quotient: ->
			@maxPoints / @catalog.scala

		questions: ->
			q = []
			for question in @catalog.questions
				q.push
					"name": question.name
					"points": ''
			q

	methods:
		loadLocations: ->
			@$http.get environment.locationUrl
				.then (response) => @locations = response.data
				.catch (e) => console.log e

		loadCatalog: ->
			@$http.get environment.catalogUrl
				.then (response) => @catalog = response.data
				.catch (e) => console.log e

		deleteLocation: (index) ->
			if confirm('Do you really want to delete this item?')
				@$http.delete environment.locationUrl + index
					.then () => @locations.splice index, 1
					.catch (e) => console.log e

		openLocation: (location) ->
			if not location
				location =
					id: @locations.length
					name: ''
					questions: @questions
			@$modal.show Location,
				originalLocation: location
				callback: => @loadLocations()
				maxRating: @catalog.maxRating
			, height: 'auto',
			clickToClose: false

	created: ->
		await @loadLocations()
		await @loadCatalog()
