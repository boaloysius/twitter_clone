<template>
  <div>
    <div class="bg-red-900">Hi there, welcome to rails app</div>
    <Button>Button</Button>
    <span>{{ message }}</span>
  </div>
</template>

<script setup lang="ts">
import { Button } from "@/components/ui/button";
import { ref } from "vue";
const message = ref("Hello, Vue 3 with Composition API!");
</script>
