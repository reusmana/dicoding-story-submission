import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("free") {
            dimension = "flavor-type"
            applicationId = "com.example.story_app_submission.free"
            resValue(type = "string", name = "app_name", value = "Story App Submission Free")
        }
        create("paid") {
            dimension = "flavor-type"
            applicationId = "com.example.story_app_submission.paid"
            resValue(type = "string", name = "app_name", value = "Story App Submission Paid")
        }
    }
}