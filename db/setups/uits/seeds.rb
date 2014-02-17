
# national teams
# - world cup

sportdb_setups = [
  ['euro-cup',               'teams'],
  ['africa-cup',             'teams'],
  ['north-america-gold-cup', 'teams'],
  ['copa-america',           'teams'],
  ['world-cup',              '2014']
]


# clubs
# - champions league
# - austrian league n cup

sportdb_setups += [
  ['europe',                  'teams'],
  ['de-deutschland',          'teams'],
  ['en-england',              'teams'],
  ['es-espana',               'teams'],
  ['it-italy',                'teams'],
  ['at-austria',              '2013_14'],
  ['europe-champions-league', '2013_14']
]


sportdb_setups.each do |setup|
  SportDb.read_setup( "setups/#{setup[1]}", find_data_path_from_gemfile_gitref( setup[0]) )
end


# load quotes/odds

## SportDb::Market.read_setup( 'setups/2013_14', find_data_path_from_gemfile_gitref( 'football.db.market' ) )
