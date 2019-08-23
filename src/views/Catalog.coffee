import * as _ from 'lodash'
import { environment } from '../environments/environment.coffee'

export default
	name: "catalog"
	data: ->
		catalog:
			scala: ''
			maxRating: ''
			questions: []
		originalCatalog: @catalog
		success: false

	methods:
		loadCatalog: ->
			@originalCatalog = _.cloneDeep @catalog
			@$http.get environment.catalogUrl
				.then (response) =>
					if response.data
						@originalCatalog = response.data
						@catalog = _.cloneDeep @originalCatalog if @originalCatalog
				.catch (e) => console.log e

		save: ->
			@success = false
			@$http.post environment.catalogUrl, {
				body: @catalog
			}
			.then (response) =>
				@originalCatalog = response.data
				@success = true
			.catch (e) => console.log e

		addQuestion: ->
			q =
				name: ''
				weight: ''
			@catalog.questions.push q
			return

		deleteQuestion: (index) ->
			@catalog.questions.splice index, 1

		reset: ->
			@catalog = _.cloneDeep @originalCatalog

	created: ->
		@loadCatalog()

	beforeRouteLeave: (to, from, next) ->
		if _.isEqual(@originalCatalog, @catalog) or window.confirm 'Unsaved changes will be lost!'
			next()
