<script setup lang="ts">
import { ref } from "vue";

import BaseBreadcrumb from "@/components/shared/BaseBreadcrumb.vue";
import WelcomeCard from "@/components/dashboards/analytical/WelcomeCard.vue";
import TheEarnings from "@/components/dashboards/analytical/TheEarnings.vue";
import MonthlyRevenue from "@/components/dashboards/analytical/MonthlyRevenue.vue";
import TheSalesOverview from "@/components/dashboards/analytical/TheSalesOverview.vue";
import TotalSales from "@/components/dashboards/analytical/TotalSales.vue";
import ProductMonthTable from "@/components/dashboards/analytical/ProductMonthTable.vue";
import BlogCard from "@/components/dashboards/analytical/BlogCard.vue";
import WeeklyStats from "@/components/dashboards/analytical/WeeklyStats.vue";
import DailyActivities from "@/components/dashboards/analytical/DailyActivities.vue";

const page = ref({ title: "Analytical" });
const breadcrumbs = ref([
 
]);
</script>

