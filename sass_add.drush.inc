<?php

/**
 * Implementation of hook_drush_command().
 *
 * @return
 *  An associative array describing your command(s).
 */
function sass_add_drush_command() {
  $items = array();

  $items['sass-add'] = array(
    'description' => 'Globs together sass files into the partial named after the folder',
    'arguments' => array(
      'theme' => 'The name of the theme.',
    ),
    'examples' => array(
      'drush sass-add mytheme' => 'Globs together all the sass files for mytheme',
    )
  );

  return $items;
}

/**
 * Implementation of hook_drush_command().
 */
function drush_sass_add($theme = NULL) {
  if ($theme) {
    $theme_path = drupal_get_path('theme', $theme);
    drush_print($theme_path);
    if ($theme_path) {
      $sass_dir = $theme_path . '/scss';
      $folders = array(
        'base',
        'components',
        'global',
        'layout',
      );
      foreach ($folders as $folder) {
        // Remove the parent import file.
        $file_name = '_' . $folder . '.scss';
        drush_print('Removing ' . $folder . '/' . $file_name);
        drupal_unlink($sass_dir . '/'. $folder . '/' . $file_name);

        // Glob together the partials into a new import file.
        $dir = opendir($sass_dir . '/'. $folder);
        $import = '';
        while ($file = readdir($dir)) {
          // Check that this is a partial.
          if (substr($file, 0, 1) === '_' && substr($file, -5) === '.scss') {
            $partial_name = substr($file, 1, strlen($file) - 6);
            $import .= "@import \"$partial_name\";\n";
          }
        }
        $output = fopen($sass_dir . '/'. $folder . '/_' . $folder . '.scss', 'w');
        drush_print('Writing ' . $folder . '/_' . $folder . '.scss');
        fwrite($output, $import);
        fclose($output);
        closedir($dir);
      }
    }
  }
}
