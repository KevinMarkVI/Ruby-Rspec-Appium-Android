JUNIT_DIR?=junit_reports
FEATURES_DIR?=features

run_all_in_parallel:
	make -j test_Google_Nexus_7_HD_Emulator_4.4 test_Samsung_Galaxy_S4_4.4_emulator

test_Google_Nexus_7_HD_Emulator_4.4:
	deviceName='Google Nexus 7 HD Emulator' platformVersion='4.4' platformName="Android" \
		app='http://saucelabs.com/example_files/ContactManager.apk' \
		make parallel_split_test

test_Samsung_Galaxy_S4_4.4_emulator:
	deviceName='Samsung Galaxy S4 Emulator' platformVersion='4.4' platformName="Android" \
		app='http://saucelabs.com/example_files/ContactManager.apk' \
		make parallel_split_test

parallel_split_test:
	parallel_split_test spec

