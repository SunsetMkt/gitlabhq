<script>
import { s__ } from '~/locale';

export default {
  i18n: {
    title: s__('PipelineEditorTutorial|💡 Tip: Visualize and validate your pipeline'),
    firstParagraph: s__(
      'PipelineEditorTutorial|Use the Visualize and Lint tabs in the pipeline editor to visualize your pipeline and check for any errors or warnings before committing your changes.',
    ),
  },
};
</script>
<template>
  <div>
    <h3 class="gl-mb-5 gl-mt-0 gl-text-lg">{{ $options.i18n.title }}</h3>
    <p class="gl-mb-0">{{ $options.i18n.firstParagraph }}</p>
  </div>
</template>
