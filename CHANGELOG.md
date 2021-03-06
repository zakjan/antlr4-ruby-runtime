0.2.10
===
- Update Rake due to security advisory.

0.2.9
===
- Minor changes to clear some ruby interpreter and code smell warnings.
- RSpecs now run properly in RubyMine

0.2.8
===
- Change certain error messages to match the format produced by the Java runtime.

0.2.7
===
- In C extension, move `for` loop variable declaration outside the loop - AWS didn't like it.

0.2.6
===
- Minor bugs when reporting errors

0.2.5
===
- Bug fix in buffered_token_stream.rb
- Bug fix in common_token.rb

0.2.4
===
- Performance improvements and bug fixes from Cameron Dutro.

0.2.3
===
- Fixed a problem displaying error messages when parsing fails.

0.2.2
===
- Added a unit test for IntervalSet, fixed some bugs, removed some unused code, renamed `or_sets` to `or`.
- Fixed eql? and <=> for ATNConfig
- Fixed compare method for ATNConfigSet
- Fixed a ParseATNSimulator problem when checking for values added to closure_busy.
- Fixed a loop error in PredictionContextUtils
- Fixed use of ObjectEqualityComparator in Triple.

0.2.1
===
- Call IntervalSet#or_sets (instead of #or or ||) to better match the Java version.

0.2.0
===
- A few small fixes:
  * Fixed a misspelled attr_reader in LexerCustomAction.
  * Fixed a reference to IntervalSet#or, which doesn't exist.
  * A few requires were missing. Decided to move all requires to autoloads.
  * Added require 'spec_helper' to all spec files.
  * Removed bundler as a dev dependency.
  * Added LexerATNConfig.create_from_config and LexerATNConfig.create_from_config2.
  * Fixed instance variable reference in LexerATNSimulator.
  * Removed Gemfile.lock from source control.

0.1.0
===
- Initial release
