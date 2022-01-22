<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
      clipped-left
    >
      <v-btn
        target="_blank"
        text
      >
        <span class="mr-2">财务自动化</span>
      </v-btn>

      <v-spacer></v-spacer>

    </v-app-bar>

      <v-navigation-drawer app absolute permanent clipped width="200">

      <v-list
        nav
        dense
      >
        <v-list-item-group
          v-model="selectedItem"
          color="primary"
          active-class="deep-blue--text text--accent-4"
        >
          <v-list-item>
            <v-list-item-title>&nbsp;&nbsp;OA 审批</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-title @click="onListItemWangdiantong">&nbsp;&nbsp;旺店通</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>

    <v-main>
      <RPA/>
    </v-main>

    
  </v-app>

  
</template>

<script>
import FrontPage from './components/FrontPage'
import RPA from './components/RPA';


export default {
  name: 'App',

  components: {
    FrontPage,
    RPA,
  },

  data: () => ({
    selectedItem: 0
  }),
  methods: {
    onListItemWangdiantong: function() {
      alert('旺店通接入中')
    }
  }
};

</script>
