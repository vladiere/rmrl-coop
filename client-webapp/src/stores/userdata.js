import { defineStore } from "pinia";

export const useUserStore = defineStore({
  id: "user",
  state: () => ({
    data: {},
    desc: "",
  }),
  actions: {
    setData(data) {
      this.data = data;
    },
    setDesc(desc) {
      this.desc = desc;
    },
  },
});
