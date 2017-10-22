FROM openjdk:8-jre-slim

# Add the jar with all the dependencies
ADD  target/container-test-1.0.jar /usr/share/tag/container-test.jar
ADD  testng-6.11.jar /usr/share/tag/testng-6.11.jar
ADD  jcommander-1.72.jar /usr/share/tag/jcommander-1.72.jar

# Command line to execute the test
ENTRYPOINT ["/usr/bin/java", "-cp", "/usr/share/tag/container-test.jar:/usr/share/tag/testng-6.11.jar:/usr/share/tag/jcommander-1.72.jar", "org.testng.TestNG", "-testclass", "org.openqa.selenium.example.GoogleTest"]