<template>
	<div class="container">
		<h2>Question catalog</h2>
		<div v-if="success" class="alert alert-success alert-dismissible" role="alert">
			Catalog saved successfully. Please check locations, edited or new questions have 0 points.
		</div>
		<form @submit="save()">
			<div class="form-group">
				<label for="scala">Scale</label>
				<input
						v-model.number="catalog.scala" type="number" class="form-control" required
						id="scala" placeholder="Scala"
				/>
				<small>What should the scala be</small><br>
				<label for="scala">Maximum Rating</label>
				<input
						v-model.number="catalog.maxRating" type="number" class="form-control" required
						id="maxRating" placeholder="Maximum Rating"
				/>
				<small>What should the maximum rating be</small>
			<hr/>
			<h4>Questions</h4>
			</div>
			<div class="question-form form-group d-flex" v-for="(question, index) in catalog.questions" :key="index">
				<div class="p-2 q-name">
					<label :for="'question' + index">{{ 'Question ' + (index + 1) }}</label>
					<input
							v-model="catalog.questions[index].name" type="text" required
							class="form-control" :id="'question' + index" placeholder="Question's name"
					/>
				</div>
				<div class="p-2">
					<label :for="'weight' + index">Weight</label>
					<input
							v-model.number="catalog.questions[index].weight" type="number" min="0" required
							class="form-control" :id="'weight' + index" placeholder="Question's weight"
					/>
				</div>
				<div class="p-2">
					<p class="placeholder"> </p>
					<button @click="deleteQuestion(index)" type="button" class="btn btn-light fa fa-trash fa-lg delete"></button>
				</div>
			</div>
			<input type="submit" class="btn btn-primary"/>
			<input type="button" class="btn btn-secondary reset-button" @click="reset()" value="Reset"/>
			<button @click="addQuestion()" type="button" class="float-right btn btn-primary fa fa-plus"></button>
		</form>
		<div class="sticky"></div>
	</div>
</template>

<script>
export { default } from "./Catalog.coffee";
</script>

<style scoped lang="sass">
	.question-form
		margin-left: 20px

	.sticky
		min-height: 100px

	.q-name
		width: 80%

	.placeholder
		margin-bottom: 2rem

	.delete
		padding: 5px
		margin-top: 5px

	.reset-button
		margin: 8px
</style>
