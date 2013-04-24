## SCSS - best practices
___

### About
The goal is to create a baseline with some documentation that will provide a
starting point for theme development using scss and compass.

There are several discussion that have steered development on
this project including…

* NOT to back the front-end developer into a corner!
  * we will not be including things that would be specific to a themed,
    developer, or front-end developer such as zen-grids, suzy, or
    other grid framework.

* NO bootstrapping, leave the theming to the themed.
  * we will not be pre-establishing design principals or markup.

* Proven Mixins, let's share, improve, and create some common ground.
  * we want to document and leverage some of the best of the best, the global
    directory may contain mixins that are not desirable for any give project;
    however, we would like to leverage some consistency where possible, so there
    will be options and descriptions for inclusion, or not.


### scss, compass,
Gathering best practices for scss as it pertains to a Drupal theme.



### Use
To use/try you can just...

`cd sites/all/themes`

`git clone git@github.com:Lullabot/scss-boilerplate.git amend`


## Contributing
Compiled CSS is ignored via the project's `.gitignore` file, but if you'd like
to customize your SASS compilation settings in `config.rb` use:

```
git update-index --assume-unchanged config.rb
```

The snippet above will keep git from whining about changes you make to the file.

