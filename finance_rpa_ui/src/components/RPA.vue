import { ipcRenderer } from 'electron'

<template>
  <v-container>

    <v-row class="text-center">
        <v-spacer></v-spacer>

        <v-col cols="12" sm="4" md="4">
            <v-menu v-model="menu1" :close-on-content-click="false" :nudge-right="40"
                transition="scale-transition" offset-y min-width="auto">
                <template v-slot:activator="{ on, attrs }">
                    <v-text-field v-model="date_selected" label="开始日期" prepend-icon="mdi-calendar"
                        readonly v-bind="attrs" v-on="on"></v-text-field>
                </template>
                <v-date-picker @input="menu1 = false" v-model="date_selected" locale="zh-cn" :first-day-of-week="1"></v-date-picker>
            </v-menu>
        </v-col>

        <v-col cols="12" sm="4" md="4">
            <v-menu v-model="menu2" :close-on-content-click="false" :nudge-right="40"
                transition="scale-transition" offset-y min-width="auto">
                <template v-slot:activator="{ on, attrs }">
                    <v-text-field v-model="time_selected" label="开始时刻" prepend-icon="mdi-clock-time-four-outline"
                      readonly v-bind="attrs" v-on="on"></v-text-field>
                </template>
                <v-time-picker
                  v-if="menu2"
                  v-model="time_selected"
                  locale="zh-cn"
                  ampm-in-title="true"
                  :allowed-minutes="allowedStep"
                ></v-time-picker>
            </v-menu>
        </v-col>

        <v-spacer></v-spacer>

    </v-row>

    <v-row class="text-center">
        <v-spacer></v-spacer>
        <v-col cols="12" sm="4" md="4">
          <v-btn color="primary" :disabled="btn_start_disabled" @click="onBtnStart">
            {{ btn_start_text }}
          </v-btn>
        </v-col>
        <v-spacer></v-spacer>
    </v-row>

  </v-container>
</template>

<script>
  export default {
    name: 'RPA',

    data: () => ({
      menu1: false, // 
      date_selected: (new Date(Date.now() - (new Date()).getTimezoneOffset() * 60000 - 86400 * 1000)).toISOString().substr(0, 10),

      menu2: false,
      allowedStep: m => m % 5 === 0,
      time_selected: "16:00",

      btn_start_disabled: false,
      btn_start_text: "启 动 任 务 ",      
    }),
    computed: {},
    methods: {
      onBtnStart1: function() {
        const { exec } = window.require('child_process')
        const iconv = window.require('iconv-lite')
        this.btn_start_disabled = true;
        this.btn_start_text = "程序运行中";
        
        try {
          const str_cmd = `"resources\\extraResources\\wxwork_rpa\\wxwork_rpa_cli.exe"  --config=resources\\extraResources\\wxwork_rpa\\config_deploy.yaml --begin-date=${this.date_selected} --begin-time=${this.time_selected}`
          console.log(`str_cmd:${str_cmd}`)
          exec(str_cmd, {encoding:'buffer'}, (error, stdout, stderr) => {
            this.btn_start_disabled = false;
            this.btn_start_text = " 启 动 任 务 "
            if (error) {
              let str = iconv.decode(error, 'cp936')
              console.log(`exec error: ${str}`);
              return;
            }
            if (stdout) {
              let str = iconv.decode(stdout, 'cp936')
              console.log(`stdout: ${str}`);
            }
            
            if (stderr) {
              let str = iconv.decode(stderr, 'cp936')
              console.log(`stderr: ${str}`);
            }
          });
        } catch (error) {
          console.log(`exception: ${error}`)
        }
      },
      onBtnStart: function() {
        const { spawn } = window.require('child_process')
        const iconv = window.require('iconv-lite')
        this.btn_start_disabled = true;
        this.btn_start_text = "程序运行中";
        
        try {
          const str_cmd = `resources\\extraResources\\wxwork_rpa\\wxwork_rpa_cli.exe`;
          const cmd_params = ['--config=resources\\extraResources\\wxwork_rpa\\config_deploy.yaml', `--begin-date=${this.date_selected}`, `--begin-time=${this.time_selected}`];
          console.log(`str_cmd:${str_cmd}`);
          const myspwan = spawn(str_cmd, cmd_params);
          myspwan.stderr.on('data', (data)=>{
            let str = iconv.decode(data, 'cp936')
            console.log(`stderr: ${str}`)
          })

          myspwan.on('close', (code)=>{
            console.log(`child process exited with code ${code}`);
            this.btn_start_disabled = false;
            this.btn_start_text = "程序运行结束";
          })
        } catch (error) {
          console.log(`exception: ${error}`)
        }
      }
    }
  }
</script>
