// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "./application"

// Import your controllers here
import HelloController from "./hello_controller"

application.register("hello", HelloController)
