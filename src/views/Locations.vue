<template>
	<div>
		<table class="table table-striped">
			<colgroup>
				<col width="10%">
				<col width="70%">
				<col width="10%">
				<col width="5%">
				<col width="5%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Location</th>
					<th scope="col">Rating</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr v-for="(location, index) in locations" :key="location.name">
					<th scope="row">{{ index + 1 }}</th>
					<td>{{ location.name }}</td>
					<td>{{ points[index] }} / {{ catalog.scala }}</td>
					<td><a @click="openLocation(location)" class="delete fa fa-pencil"></a></td>
					<td><a @click="deleteLocation(index)" class="delete fa fa-trash"></a></td>
				</tr>
			</tbody>
		</table>
		<button  @click="openLocation()" class="float-right btn btn-primary fa fa-plus" :disabled="!catalog"></button>
		<p v-if="!catalog">No catalog</p>
		<div class="sticky"></div>
	</div>
</template>

<script lang="coffee">
	export { default } from './Locations.coffee'
</script>

<style scoped lang="sass">
	.float-right
		margin-right: 10px

	td .delete:hover
		cursor: pointer
		color: darkgray
		text-decoration: none

	a
		color: #202528
</style>
