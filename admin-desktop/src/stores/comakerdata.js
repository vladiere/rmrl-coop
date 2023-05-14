import { defineStore } from 'pinia'

export const useComakerStore = defineStore('counter', {
  state: () => ({
    data: {}
  }),
  actions: {
    setComaker (data) {
      this.data = data;
    }
  }
})
