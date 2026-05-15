const { app, BrowserWindow } = require('electron')

function createWindow() {
  const win = new BrowserWindow({
    width: 1400,
    height: 900,
    autoHideMenuBar: true
  })

  win.loadURL('https://cloud.oracle.com/')
}

app.whenReady().then(createWindow)