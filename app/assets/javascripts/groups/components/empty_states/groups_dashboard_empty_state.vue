<script>
import { GlEmptyState } from '@gitlab/ui';
import groupsEmptyStateIllustration from '@gitlab/svgs/dist/illustrations/empty-state/empty-groups-md.svg?url';

import { s__ } from '~/locale';

export default {
  components: { GlEmptyState },
  groupsEmptyStateIllustration,
  i18n: {
    title: s__('GroupsEmptyState|A group is a collection of several projects'),
    description: s__(
      "GroupsEmptyState|If you organize your projects under a group, it works like a folder. You can manage your group member's permissions and access to each project in the group.",
    ),
  },
};
</script>

<template>
  <gl-empty-state
    :title="$options.i18n.title"
    :description="$options.i18n.description"
    :svg-path="$options.groupsEmptyStateIllustration"
    :svg-height="null"
  />
</template>
