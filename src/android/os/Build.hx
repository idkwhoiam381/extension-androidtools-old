package android.os;

import lime.system.JNI;

class Build {
	/**
	 * The manufacturer of the product/hardware.
	 */
	public static var MANUFACTURER:String = JNI.createStaticField("android/os/Build", "MANUFACTURER", "Ljava/lang/String;").get();

	/**
	 * The end-user-visible name for the end product.
	 */
	public static var MODEL:String = JNI.createStaticField("android/os/Build", "MODEL", "Ljava/lang/String;").get();

	/**
	 * The user-visible version string.
	 */
	public static var RELEASE:String = JNI.createStaticField("android/os/Build$VERSION", "RELEASE", "Ljava/lang/String;").get();

	/**
	 * The SDK version of the software currently running on this hardware device.
	 */
	public static var SDK_INT:Int = JNI.createStaticField("android/os/Build$VERSION", "SDK_INT", "I").get();
	
	public static var ODM_SKU:String = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) ? JNICache.createStaticField('android/os/Build', 'ODM_SKU',
		'Ljava/lang/String;')
		.get() : UNKNOWN;

	/**
	 * The SKU of the hardware (from the kernel command line).
	 * The SKU is reported by the bootloader to configure system software features.
	 * If no value is supplied by the bootloader, this is reported as ``UNKNOWN``.
	 */
	public static var SKU:String = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) ? JNICache.createStaticField('android/os/Build', 'SKU',
		'Ljava/lang/String;')
		.get() : UNKNOWN;

	/**
	 * The manufacturer of the device's primary system-on-chip.
	 */
	public static var SOC_MANUFACTURER:String = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) ? JNICache.createStaticField('android/os/Build',
		'SOC_MANUFACTURER', 'Ljava/lang/String;')
		.get() : UNKNOWN;

	/**
	 * The model name of the device's primary system-on-chip.
	 */
	public static var SOC_MODEL:String = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) ? JNICache.createStaticField('android/os/Build', 'SOC_MODEL',
		'Ljava/lang/String;')
		.get() : UNKNOWN;
}
