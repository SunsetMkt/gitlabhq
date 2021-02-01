import ClustersBundle from '~/clusters/clusters_bundle';
import initGkeNamespace from '~/create_cluster/gke_cluster_namespace';
import initIntegrationForm from '~/clusters/forms/show';
import initClusterHealth from './cluster_health';

document.addEventListener('DOMContentLoaded', () => {
  new ClustersBundle(); // eslint-disable-line no-new
  initGkeNamespace();
  initClusterHealth();
  initIntegrationForm();
});
