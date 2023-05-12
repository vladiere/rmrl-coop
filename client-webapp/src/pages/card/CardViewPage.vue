<template>
  <q-page padding v-if="stylesLoaded">
    <div class="full-width row justify-center q-mt-md">

      <div class="q-ma-sm row q-gutter-md wrap justify-center" style="width: 100%;">
        <q-card class="my-card bg-blue-grey-13 text-white" style="width: 30%; height: 80vh;">
          <img style="height: 60%;"
            src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.8FgYKGrFLe5LcJxNEozdDgHaEK%26pid%3DApi&f=1&ipt=fafeb355bc435ab27bfda5d09184098fd889b5f188ac059d12c8e366a91c2f33&ipo=images"
            class="card-img-top"
            alt="..."
          />
          <q-card-section>
            <div class="text-h6">Petty Cash</div>
          </q-card-section>
          <q-card-section class="q-pt-none">
            RMRL Cooperative Online offers petty cash services to members for
            small expenses and convenient access to funds..
          </q-card-section>

          <q-separator dark />

          <q-card-actions>
            <q-btn class="q-mb-lg" flat clickable @click="gotoPage('/petty-cash')">Goto Petty Cash</q-btn>
          </q-card-actions>
        </q-card>
        <q-card class="my-card bg-blue-grey-13 text-white" style="width: 30%; height: 80vh;">
          <img style="height: 60%;"
            src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.dnS98AEaziNPTmqIECrzhgHaE8%26pid%3DApi&f=1&ipt=6ef5a9c3f7601c264ae1793e824d803c78527077bf916708bb336f60a016dd0f&ipo=images"
            class="card-img-top"
            alt="..."
          />
          <q-card-section>
            <div class="text-h6">Apply for Loan</div>
          </q-card-section>
          <q-card-section class="q-pt-none">
            RMRL Cooperative offers online loans for its members. Apply today and
            get fast approval for your financial needs!.
          </q-card-section>

          <q-separator dark />

          <q-card-actions>
            <q-btn class="q-mb-lg" flat clickable @click="gotoPage('/loans')">Goto Loan</q-btn>
          </q-card-actions>
        </q-card>
        <q-card class="my-card bg-blue-grey-13 text-white" style="width: 30%; height: 80vh;">
          <img style="height: 60%;"
              src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.cyBfR0_4WRjh4LgFeQ0q7gAAAA%26pid%3DApi&f=1&ipt=b1bb10ef2a697bf5f9153a4a67c1f42d267f800f2337ce22c3e435b98bd4f328&ipo=images"
              class="card-img-top"
              alt="..."
            />
          <q-card-section>
            <div class="text-h6">Savings</div>
          </q-card-section>
          <q-card-section class="q-pt-none">
            Securely save and grow your money online with RMRL Cooperative.
                Open an account today and start building your financial future.
          </q-card-section>

          <q-separator dark />

          <q-card-actions>
            <q-btn class="q-mb-lg" flat clickable @click="gotoPage('/savings')">Goto Savings</q-btn>
          </q-card-actions>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref } from "vue";
import { useRouter } from 'vue-router'
import { useQuasar  } from "quasar";

defineComponent({
  name: "CardViewPage",
});

const router = useRouter()

defineComponent({
  name: "MainLayout",
});

const $q = useQuasar();
const stylesLoaded = ref(false);


$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 500);

const gotoPage = (gotopath) => {
  router.push(gotopath);
}

</script>
