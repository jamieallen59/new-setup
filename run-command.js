import { exec } from 'child_process'
import {
  ALREADY_INSTALLED,
  ALREADY_INSTALLED_TEXTS,
  error,
  warning,
  exitFailure
} from './constants'

const isAlreadyInstalled = error => {
  let isAlreadyIncluded = false

  ALREADY_INSTALLED_TEXTS.forEach(text => {
    if (error.includes(text)) {
      isAlreadyIncluded = true
    }
  })

  return isAlreadyIncluded
}

const handleError = ({ stdout, stderr }) => {
  if (stderr.length) {
    error('Script failed with error: ', stderr)
    exitFailure()
  }
}

const checkIfAlreadyInstalled = ({ stdout, stderr }) => {
  const checkOutput = isAlreadyInstalled(stdout)
  const checkError = isAlreadyInstalled(stderr)

  if (checkOutput || checkError) {
    return true
  }
}

export default async function (command) {
  const result = new Promise((resolve, reject) => {
    exec(command, (err, stdout, stderr) => {
      if (err) {
        reject(err)
      } else {
        resolve({ stdout, stderr })
      }
    })
  })

  const commandOutput = await result

  const isAlreadyInstalled = checkIfAlreadyInstalled(commandOutput)

  if (isAlreadyInstalled) {
    return ALREADY_INSTALLED
  }

  handleError(commandOutput)

  const { stdout, stderr } = commandOutput

  return {
     stdout, stderr
  }
}
