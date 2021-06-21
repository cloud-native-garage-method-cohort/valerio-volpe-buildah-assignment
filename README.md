# valerio-volpe-buildah-assignment

# Tekton Pipeline Build - buildah Assignment

## Standards

- Use the Task Catalog to build a `Pipeline` that clones a Git repository, runs the tests, creates a Docker image, pushes the image to quay.io

## Instructions

In your directory of the `assignments` repository, create a directory named `buildah-assignment`. For this assignment the two problems will build on each other. ***Do not*** create the application for this assignment in the `assignments` repository, instead create a directory in `~/workspace` of your local machine (or any other directory than the one where you have cloned the `assignments` repository).

#### Problem 1 - Create the Application

First, `cd ~/workspace`.

If you have not already, either use (1) `npx express-generator` or (2) install [Express generator](https://expressjs.com/en/starter/generator.html) with `npm install -g express-generator`.

Generate a new application, name it however you would like. `cd` into the application directory and run `npm install` (per the output of running `npx express-generator`). Create a GitHub repository in the cohort's GitHub organization. Make sure your `.gitignore` includes the `node_modules` directory and push your application to the remote repository you just created.

Next, create a `Dockerfile` for the application that uses a [Quay.io](https://quay.io) hosted version of the node image to run it, like [this one](https://quay.io/repository/ibmgaragecloud/node).

Commit and push your `Dockerfile` to the remote repository.

#### Problem 2

In your project, create a `tekton` directory. In `tekton/` create a CI Pipeline that uses `buildah` to build your image and push it to quay.io.

When you have completed this and see the image in Quay.io, create a screenshot of your pushed image in your quay.io account, name it `pipeline-complete.png` (or the appropriate extension), and put it into the `buildah-assignment` directory you created in your `assignments` directory.  

#### Stretch (Optional)

So far we have only built Node applications, in part for simplicity of build steps. While Node is on the rise, even in the Enterprise, many re-platforming efforts will more likely be based on C#/.NET applications or Java/Spring.

For this Stretch problem, you will build a pipeline that uses buildah to build the application, you may pick your challenge:

1. *C#/.NET* - Follow [this guide](https://docs.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows) and Dockerize a .NET Core application. Build a pipeline that uses buildah to build the application.
1. *Java/Spring* - Follow [this guide](https://spring.io/guides/gs/spring-boot-docker/) and Dockerize a Spring application. It may be helpful to know about the [Maven Tekton Task](https://github.com/tektoncd/catalog/tree/main/task/maven/0.2).
