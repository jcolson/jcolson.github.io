ruby -r rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordPress.run({
      "dbname"         => "karmawp",
      "user"           => "karma_wp",
      "password"       => "r0ckyh0rr0r",
      "host"           => "localhost",
      "port"           => "3306",
      "socket"         => "",
      "table_prefix"   => "wp_",
      "site_prefix"    => "",
      "clean_entities" => true,
      "comments"       => false,
      "categories"     => false,
      "tags"           => false,
      "more_excerpt"   => false,
      "more_anchor"    => false,
      "extension"      => "html",
      "status"         => ["publish"]
    })'
    