import { defineStore } from "pinia";

export const useMemberStore = defineStore({
  id: "store",
  state: () => ({
    data: {},
  }),
  actions: {
    setData(data) {
      this.data = data;
    },
  },
});
