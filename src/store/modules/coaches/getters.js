export default {
  allCoaches(state) {
    return state.coaches;
  },
  hasCoaches(state) {
    return state.coaches && state.coaches.length > 0;
  },
  isCoach(_state, getters, _rootState, rootGetters) {
    const coaches = getters.allCoaches;
    const userId = rootGetters.userId;
    return coaches.some(coach => coach.id === userId);
  }
};
