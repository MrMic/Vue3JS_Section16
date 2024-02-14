<template>
  <section>
    <base-card>
      <h2>Register as a Coach now!</h2>
      <coach-form @save-data="saveData" />
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
  },
  methods: {
    saveData(data) {
      this.$store.dispatch('coaches/registerCoach', data);
      this.$router.replace('/coaches');
    }
  }
};
</script>
