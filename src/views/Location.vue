<template>
	<div class="reveal-modal">
		<button class="btn close-button" data-close type="button" @click="close()">
			<span aria-hidden="true">&times;</span>
		</button>
		<h2>{{ title }}</h2>
		<form @submit="save()">
			<div class="form-group">
				<label for="locationName">Location name</label>
				<input
					v-model="location.name" type="text" class="form-control" required
					id="locationName" placeholder="Enter the name of the location"
				/>
			</div>
			<hr/>
			<div class="form-group" v-for="(question, index) in location.questions" :key="question.name">
				<label :for="'question' + index"> {{ question.name }}</label>
				<input
					v-model.number="location.questions[index].points" type="number" min="0" :max="maxRating" required
					class="form-control" :id="'question' + index" placeholder="Points for this question"
				/>
			</div>
			<p v-if="error" class="error">
				{{ error }}
			</p>
			<input type="submit" class="btn btn-primary">
		</form>
	</div>
</template>

<script>
export { default } from "./Location.coffee";
</script>

<style scoped lang="sass">
	.close-button
		font-size: 30px
		float: right

	.reveal-modal
		padding: 1rem

	.error
		color: red

	.sticky
		min-height: 100px
</style>
