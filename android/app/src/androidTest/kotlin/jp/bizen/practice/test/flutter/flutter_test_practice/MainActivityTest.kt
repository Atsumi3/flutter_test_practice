package jp.bizen.practice.test.flutter.flutter_test_practice

import androidx.test.rule.ActivityTestRule
import dev.flutter.plugins.integration_test.FlutterTestRunner
import org.junit.Rule
import org.junit.runner.RunWith

@RunWith(FlutterTestRunner::class)
class MainActivityTest {
    @Rule
    var rule: ActivityTestRule<MainActivity> = ActivityTestRule(MainActivity::class.java)
}
