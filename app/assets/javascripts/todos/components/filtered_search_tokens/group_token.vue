<script>
import { __ } from '~/locale';
import searchTodosGroupsQuery from '../queries/search_todos_groups.query.graphql';
import AsyncToken from './async_token.vue';

export default {
  i18n: {
    suggestionsFetchError: __('There was a problem fetching groups.'),
  },
  components: {
    AsyncToken,
  },
  methods: {
    fetchGroups(search = '') {
      return this.$apollo
        .query({
          query: searchTodosGroupsQuery,
          variables: { search },
        })
        .then(({ data }) => data.currentUser.groups.nodes);
    },
    displayValue(group) {
      return group?.name;
    },
  },
};
</script>

<template>
  <async-token
    :fetch-suggestions="fetchGroups"
    :suggestions-fetch-error="$options.i18n.suggestionsFetchError"
    v-bind="$attrs"
    v-on="$listeners"
  >
    <template #token-value="{ inputValue, activeTokenValue }">
      {{ activeTokenValue ? displayValue(activeTokenValue) : inputValue }}
    </template>
    <template #suggestion-display-name="{ suggestion }">
      {{ suggestion.fullName }}
    </template>
  </async-token>
</template>
