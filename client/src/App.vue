<template>
  <div>
    <div class="bg-red-900">Hi there, welcome to rails app</div>
    <Button>Button</Button>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { Button } from "@/components/ui/button";

export default defineComponent({
  name: "App",
  components: {
    Button,
  },
});
</script>
