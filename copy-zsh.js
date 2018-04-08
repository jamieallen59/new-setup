import https from 'https'
import fs from 'fs'
import path from 'path'
import os from 'os'

import runCmdLine from './run-command'
import { error, success, exitFailure } from './constants'

const download = async (url, dest, cb) => {
  const write = fs.createWriteStream(dest)
  success('started Downloading file')

  const request = https.get(url, async (response) => {
    if (response.statusCode !== 200) {
      error('Response status was ' + response.statusCode)
      exitFailure()
    }

    success('writing file...')
    response.pipe(write)

    write.on('finish', () => {
      write.close(cb)
    })
  })

  request.on("error", (err) => {
    error(err)
    fs.unlink(dest)
    exitFailure()
  })

  write.on("error", (err) => {
    error(err)
    fs.unlink(dest)
    exitFailure()
  })

  return await request
}

const main = async () => {
  const url = 'https://raw.githubusercontent.com/jamieallen59/new-setup/master/.zshrc'
  const callback = () => success('Finished writing file')
  const destination = `${os.homedir()}/.zshrc`

  await download(url, destination, callback)
}

main()
