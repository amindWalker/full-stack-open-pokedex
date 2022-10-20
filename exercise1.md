> Some common steps in a CI setup include linting, testing, and building. What are the specific tools for taking care of these steps in the ecosystem of the language you picked? You can search for the answers by google.

- As a `Rust` programmer (and picking `Rust` as my programming language of choice) the answers for these questions are easier than if I chose something like `JavaScript` or `TypeScript` because they are too fragmented in many different libraries and different standards. Every linting (and format style guildelines as well), testing and building are handled by `rustfmt` and `cargo`, first-class builtin tools integrated at language level. No need to choose between library X or Y, if you don't want/need to. Also, `Rust` has full native support for all the big and popular CI/CD avaiable like **Jenkins** or **GitHub actions** and they have templates for different needs as well as customizing your own scripts.

> What alternatives are there to set up the CI besides Jenkins and GitHub Actions? Again, you can ask google!

- There are many native support out there, which is nice, but `Rust` have other great and popular alternatives as well like **Travis CI**, **GitLab** and **Heroku**.

> Would this setup be better in a self-hosted or a cloud-based environment? Why? What information would you need to make that decision?

- Rust is a typically less resource hungry (not so much in the compiling process) than most languages so there is no need to use huge CI requirements, like a build system with 32GB of RAM and 16 CPU cores, for most applications. A entry-level cloud-based environment should do the job practically for all applications. Of course, some projects have different needs, e.g. Game Development and Game Engines, so in this case you will need much more than a ready-made entry-level solution and certainly you have to setup a custom environment with addiotional hardware involved, thus if a cloud-based don't have a extra paid offer for your needs a self-hosted environment would be the next choice.
