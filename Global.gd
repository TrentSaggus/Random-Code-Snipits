extends Node

const gameTime: float = 15.0 # units in Minutes

# Define Base Player Attributes
# Reason for var is that different characters will have different base stats, that will change these.
var playerHealth: int = 100
var playerShield: int = 0
var playerSpeed: float = 8.0
var playerExperience: int = 0
var playerLevel: int = 0
var playerArmour: int = 0
var playerBaseAttackSpeed: int = 10
var playerDashChargeMax: int = 3
var playerDashChargeCount: int = playerDashChargeMax
var playerDashSpeed: int = 80
var playerDashLenght: float = 0.5
var playerDashRechargeTime: float = 5.0
var playerIsDashing: bool = false
var playerIsInvulnerable: bool = false

# Define Enemy Stats
# Smallest Enemy
const smallestEnemyHealth: int = 3
const smallestEnemyArmour: int = 0
const smallestEnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const smallestEnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const smallestEnemyIsRanged: bool = false
const smallestEnemySpeed: int = 5
const smallestEnemySpawnRate: float = 0.8 # used for timer, units = seconds
const smallestEnemyCountMax: int = 200

# Tiny Enemy
const tinyEnemyHealth: int = 5
const tinyEnemyArmour: int = 0
const tinyEnemyTouchDamage: int = 7 # Damage Taken when player touches Enemy
const tinyEnemyAttackDamage: int = 3 # Damage Taken when player is hit by Enemy attack
const tinyEnemyIsRanged: bool = false
const tinyEnemySpeed: int = 6
const tinyEnemySpawnRate: float = 0.7 # used for timer, units = seconds
const tinyEnemyCountMax: int = 200

# Small Enemy
const smallEnemyHealth: int = 8
const smallEnemyArmour: int = 2
const smallEnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const smallEnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const smallEnemyIsRanged: bool = false
const smallEnemySpeed: int = 5
const smallEnemySpawnRate: float = 0.8 # used for timer, units = seconds
const smallEnemyCountMax: int = 200

# Medium Enemy
const mediumEnemyHealth: int = 3
const mediumEnemyArmour: int = 0
const mediumEnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const mediumEnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const mediumEnemyIsRanged: bool = false
const mediumEnemySpeed: int = 5
const mediumEnemySpawnRate: float = 0.8 # used for timer, units = seconds
const mediumEnemyCountMax: int = 200

# Big Enemy 1
const big1EnemyHealth: int = 3
const big1EnemyArmour: int = 0
const big1EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const big1EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const big1EnemyIsRanged: bool = false
const big1EnemySpeed: int = 5
const big1EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const big1EnemyCountMax: int = 200

# Big Enemy 2
const big2EnemyHealth: int = 3
const big2EnemyArmour: int = 0
const big2EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const big2EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const big2EnemyIsRanged: bool = false
const big2EnemySpeed: int = 5
const big2EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const big2EnemyCountMax: int = 200

# Big Enemy 3
const big3EnemyHealth: int = 3
const big3EnemyArmour: int = 0
const big3EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const big3EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const big3EnemyIsRanged: bool = false
const big3EnemySpeed: int = 5
const big3EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const big3EnemyCountMax: int = 200

# Big Enemy 4
const big4EnemyHealth: int = 3
const big4EnemyArmour: int = 0
const big4EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const big4EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const big4EnemyIsRanged: bool = false
const big4EnemySpeed: int = 5
const big4EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const big4EnemyCountMax: int = 200

# Boss 1
const boss1EnemyHealth: int = 3
const boss1EnemyArmour: int = 0
const boss1EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const boss1EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const boss1EnemyIsRanged: bool = false
const boss1EnemySpeed: int = 5
const boss1EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const boss1EnemyCountMax: int = 200

# Boss 2
const boss2EnemyHealth: int = 3
const boss2EnemyArmour: int = 0
const boss2EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const boss2EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const boss2EnemyIsRanged: bool = false
const boss2EnemySpeed: int = 5
const boss2EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const boss2EnemyCountMax: int = 200

# Boss 3
const boss3EnemyHealth: int = 3
const boss3EnemyArmour: int = 0
const boss3EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const boss3EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const boss3EnemyIsRanged: bool = false
const boss3EnemySpeed: int = 5
const boss3EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const boss3EnemyCountMax: int = 200

# Boss 4
const boss4EnemyHealth: int = 3
const boss4EnemyArmour: int = 0
const boss4EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const boss4EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const boss4EnemyIsRanged: bool = false
const boss4EnemySpeed: int = 5
const boss4EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const boss4EnemyCountMax: int = 200

# Boss 5
const boss5EnemyHealth: int = 3
const boss5EnemyArmour: int = 0
const boss5EnemyTouchDamage: int = 5 # Damage Taken when player touches Enemy
const boss5EnemyAttackDamage: int = 2 # Damage Taken when player is hit by Enemy attack
const boss5EnemyIsRanged: bool = false
const boss5EnemySpeed: int = 5
const boss5EnemySpawnRate: float = 0.8 # used for timer, units = seconds
const boss5EnemyCountMax: int = 200
