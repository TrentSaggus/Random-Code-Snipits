extends Node

func _ready():
	$DashRechargeTimer.autostart = false
	$DashRechargeTimer.one_shot = false
	$DashTimer.autostart = false
	$DashTimer.one_shot = true

var basePlayerSpeed

func dash():
	if Global.playerIsDashing && Global.playerDashChargeCount > 0:
		Global.playerIsDashing = false
		print("Dashing")
		$DashTimer.wait_time = Global.playerDashLenght
		$DashTimer.start()
		basePlayerSpeed = Global.playerSpeed
		Global.playerSpeed = Global.playerDashSpeed
		Global.playerDashChargeCount -= 1
		print("Current Player Speed: ", Global.playerSpeed)
		print("Current Dash Charges: ", Global.playerDashChargeCount)
		
		# Ensure that the recharge timer is not counting while charges are at max as this will mean that an extra charge is stored up and is available immediatly after dashing.
		if Global.playerDashChargeCount < Global.playerDashChargeMax:
			$DashRechargeTimer.wait_time = Global.playerDashRechargeTime
			$DashRechargeTimer.start()
		elif Global.playerDashChargeCount == Global.playerDashChargeMax:
			$DashRechargeTimer.stop()

func _on_dash_timer_timeout():
	Global.playerSpeed = basePlayerSpeed
	print("No longer Dashing")
	print("Current Player Speed: ", Global.playerSpeed)



func _on_dash_recharge_timer_timeout():
	if Global.playerDashChargeCount < Global.playerDashChargeMax:
		Global.playerDashChargeCount += 1
		print("Current Dash Charge Count: ", Global.playerDashChargeCount)
