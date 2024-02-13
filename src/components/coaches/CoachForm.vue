<template>
  <form @submit.prevent="submitForm">
    <div class="form-control">
      <label for="firstname">First Name</label>
      <input id="firstname" v-model.trim="firstName" type="text">
    </div>
    <div class="form-control">
      <label for="lastname">Last Name</label>
      <input id="lastname" v-model.trim="lastName" type="text">
    </div>
    <div class="form-control">
      <label for="description">Description</label>
      <textarea id="description" v-model.trim="description" rows="5" />
    </div>
    <div class="form-control">
      <label for="rate">Hourly Rate</label>
      <input id="rate" v-model.number="rate" type="number">
    </div>
    <div class="form-control">
      <h3>Areas of Expertise</h3>
      <div>
        <input id="frontend" v-model="areas" type="checkbox" value="frontend">
        <label for="frontend">Frontend Development</label>
      </div>
      <div>
        <input id="backend" v-model="areas" type="checkbox" value="backend">
        <label for="backend">Backend Development</label>
      </div>
      <div>
        <input id="career" v-model="areas" type="checkbox" value="career">
        <label for="career">Career Advisory</label>
      </div>
    </div>
    <base-button type="submit">
      Register
    </base-button>
  </form>
</template>

<!-- ______________________________________________________________________ -->
<script>
export default {
  emits: ['save-data'],
  data() {
    return {
      firstName: '',
      lastName: '',
      description: '',
      rate: null,
      areas: []
    };
  },
  methods: {
    submitForm() {
      const formData = {
        first: this.firstName,
        last: this.lastName,
        desc: this.description,
        rate: this.rate,
        areas: this.areas
      };

      console.log(formData);
      this.$emit('save-data', formData);
    }
  }
};
</script>

<!-- ______________________________________________________________________ -->
<style scoped>
.form-control {
  margin: 0.5rem 0;
}

label {
  font-weight: bold;
  display: block;
  margin-bottom: 0.5rem;
}

input[type='checkbox']+label {
  font-weight: normal;
  display: inline;
  margin: 0 0 0 0.5rem;
}

input,
textarea {
  display: block;
  width: 100%;
  border: 1px solid #ccc;
  font: inherit;
}

input:focus,
textarea:focus {
  background-color: #f0e6fd;
  outline: none;
  border-color: #3d008d;
}

input[type='checkbox'] {
  display: inline;
  width: auto;
  border: none;
}

input[type='checkbox']:focus {
  outline: #3d008d solid 1px;
}

h3 {
  margin: 0.5rem 0;
  font-size: 1rem;
}

.invalid label {
  color: red;
}

.invalid input,
.invalid textarea {
  border: 1px solid red;
}
</style>