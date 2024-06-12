<template>
  <div>
    <div class="bg-red-900">Hi there, welcome to rails app</div>
    <Button>Button</Button>
    <span>{{ message }}</span>
    <span>{{ data }}</span>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from "vue";
import { hello_url } from "@/utils/routes";
import { Button } from "@/components/ui/button";
const message = ref("Hello, Vue 3 with Composition API!");

const data = ref(null);

const fetchData = async () => {
  try {
    console.log(hello_url());
    const response = await fetch(hello_url());

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    data.value = await response.json();

    console.log(data.value);
  } catch (error) {
    console.error("Failed to fetch data:", error);
  }
};

onMounted(() => {
  fetchData();
});
</script>
