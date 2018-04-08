import runCmdLine from './run-command'
import {
  STAGES,
  ALREADY_INSTALLED,
  warning,
  success,
  exitSuccess
} from './constants'

const commandLineArguments = () => (
  process.argv.filter((val, index) => (
    index >= 3 && val
  ))
)

const downloadPackage = async ({ name, cmd }) => {
  success(`Getting ${name}...`)
  const result = await runCmdLine(cmd)

  if (result === ALREADY_INSTALLED) {
    warning(`${name} is already installed`)
    return
  }

  success(`Downloaded ${name}`)
}

const main = async () => {
  success('Started')

  for(const currentStage of Object.values(STAGES)) {
    await downloadPackage(currentStage)
  }

  exitSuccess()
}

main()
