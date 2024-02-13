<template>
  <section>
    <base-card>
      <h2>Register as a Coach now!</h2>
      <coach-form />
    </base-card>
  </section>
</template>

<!-- ______________________________________________________________________ -->
<script>
import CoachForm from '../../components/coaches/CoachForm.vue';
export default {
  name: 'CoachRegistration',
  components: {
    CoachForm
  }
};
</script>
