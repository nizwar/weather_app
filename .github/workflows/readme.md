# Flutter Build Actions
Automate your Flutter build process with GitHub Actions.

Simply run this command in your project root directory to add the workflow file:
`git clone https://github.com/nizwar/flutter-build-actions.git .github/workflows && rm -rf .github/workflows/.git`

or Follow the steps below to add the workflow file manually.
## Usage
1. Create a new workflow file in your repository at `.github/workflows/flutter-build.yml`
2. Copy flutter-build.yml script from this repository into your workflow file
3. Commit and push your workflow file to your repository
4. It will start building your project automatically when you push a commit remotely

# Setup Documentation
After the build is complete on the first time, setup your Github Pages to deploy the documentation, you can follow the steps below:
1. Go to your repository settings
2. Scroll down to Github Pages section (Left menu)
3. On Build and deploy section, change Source to `Deploy from a branch`
4. Select `documentation` branch and `/ (root)` folder
5. Click Save
6. Wait for the Github Pages to be deployed (Go to action tab to see the progress)

## Working on documentation
The point of making dart documentation is to use `///` (3 slashes) to comments above every member and type.
Example:
```dart
/// Put here to describe of your function
///
/// To make new line, Make empty line between 2 lines
/// For checking, you can hover over the function to see the description
void yourFunction(String path) {
    // To comment inside your function use 2 slashes
}
```

More details about dart documentation can be found [here](https://dart.dev/guides/language/effective-dart/documentation).


# Actions Workflow
The workflow will run the following steps:
1. Checkout the repository
2. Setup SDK 12
3. Initialize Project Version
4. Install Flutter SDK
5. Generate DartDoc
6. Build APK & AAB
7. Upload APK & AAB as Github Release
8. Deploy Documentation to Github Pages 


## Notes
To see the progress of the workflow, go to the Actions tab in your repository.

The process will take about 10 minutes to complete (depends how big your project is). Once the build is complete, you will receive an email and you can download the APK's and AAB files from the release page.

If you want to manually trigger the workflow, simply change "push" to "workflow_dispatch" (LINE 2), and then trigger it by clicking the "Run workflow" button in the Actions tab.


# Example Project
Here is an example project that uses this workflow: [Flutter Build Actions Example](https://github.com/nizwar/flutter-build-actions-built-example).

See the release page to download the APK and AAB files: [Release Page](https://github.com/nizwar/flutter-build-actions-built-example/releases/)

See the Github Pages to see the documentation: [Github Pages](https://nizwar.github.io/flutter-build-actions-built-example/)

## Support me 
If you like this project, please give it a star and share it with your friends. You can also support me by buying me a coffee with [PayPal](https://paypal.me/nizwar)

