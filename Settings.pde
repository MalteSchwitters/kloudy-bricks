/**
 * Malte Schwitters 2017, für das WPM Interaktive 3D-Graphik mit Processing
 * 
 * This class holds some settings for the project. All settings are public and can be accessed 
 * and changed directly. Also has keyboard input to change settings with hotkeys.
 */
class Settings implements KeyboardInteractable {

    // render settings
    public boolean renderCollision = false;
    public boolean renderGeometry = true;
    public int gridSize = 100;
    public boolean renderAxis = true;
    public boolean renderGrid = true;

    // input settings
    public float cameraInputMultX = 1;
    public float cameraInputMultY = -1;
    public float cameraInputMultZoom = 5;

    // key mapping
    
    public int keymapJump = KeyEvent.VK_UP;
    public int keymapDodge = KeyEvent.VK_DOWN;

    public int keymapGeometryOnly = KeyEvent.VK_1;
    public int keymapCollisionOnly = KeyEvent.VK_2;
    public int keymapGeometryAndCollision = KeyEvent.VK_3;

    public Settings() {
        keyboardHandler.registerForKeyboardInput(this);
    }

    @Override
    public boolean keyPressed(int keycode, boolean ctrl, boolean alt, boolean shift) {
        if (keycode == keymapGeometryOnly) {
            renderCollision = false;
            renderGeometry = true;
        } else if (keycode == keymapCollisionOnly) {
            renderCollision = true;
            renderGeometry = false;
        } else if (keycode == keymapGeometryAndCollision) {
            renderCollision = true;
            renderGeometry = true;
        } 
        return false;
    }

    @Override
    public boolean keyReleased(int keycode, boolean ctrl, boolean alt, boolean shift) {
        return false;
    }
}