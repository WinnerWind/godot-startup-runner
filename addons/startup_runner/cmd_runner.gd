@tool
extends EditorPlugin

# CHANGE THIS IF YOU WANT TO MOVE THE ADDON TO SOMEPLACE ELSE
const commands_file_path:String = "res://addons/startup_runner/command.txt"

# Get these from the command.txt file.
var shell_name:String = "sh"
var shell_execute_command:String = "-c"

func _enter_tree() -> void: #Also runs on editor start.
	if not FileAccess.file_exists(commands_file_path): #Intercept the error with our own.
		push_error("STARTUP COMMAND RUNNER: Command file not found at %s. Was it moved or deleted?"%commands_file_path)
	else:
		# Get the contents of the file as a text and then split it by the line.
		var commands = FileAccess.open(commands_file_path,FileAccess.READ).get_as_text().split("\n")

		# Line 0 is the shell name, Line 1 is the execute argument.
		# The operator makes sure we don't set the shell name to empty.
		shell_name = commands[0] if commands[0] != "" else shell_name
		shell_execute_command = commands[1] if commands[1] != "" else shell_execute_command

		for command in commands.slice(2):
			if not command.strip_edges() == "": #Don't execute a blank line on accident.
				OS.execute_with_pipe(shell_name,[shell_execute_command, command],false)
				print("%s %s %s"%[shell_name,shell_execute_command,command])


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass #No cleanup required.
