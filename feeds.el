(setq elfeed-feeds
      '(("https://meaningness.com/rss.xml")
        ("https://bengrosser.com/feed/")
        ("http://innovascapes.blogspot.com/feeds/posts/default")
        ("http://feeds.feedburner.com/robinsloan")
        ("https://www.robinsloan.com/feed.xml" networks culture)
        ("https://toshareproject.it/artmakerblog/feed" networks culture bloggers)
        ("https://medium.com/feed/@bruces" culture bloggers)
        ("https://publicdomainreview.org/rss.xml" culture)
        ("http://www.bernardokastrup.com/feeds/posts/default")
        ("http://feeds.feedburner.com/zenhabits")
        ("http://www.tbray.org/ongoing/ongoing.atom" networks bloggers)
        ("https://richardgwyn.me/feed/" bloggers)
        ("https://jonathangray.org/feed.xml" sts)
        ("http://chrisblattman.com/feed/" bloggers real-news)
        ("https://lord.io/feed.xml" bloggers informatics)
        ("http://www.thinktankwatch.com/feeds/posts/default" real-news)
        ("http://www.dlederle.com/feed.xml" sts informatics bloggers)
        ("https://www.zylstra.org/blog/feed/" identity bloggers)
        ("https://blog.khinsen.net/feeds/all.rss.xml" bloggers commons sts)
        ("http://www.craigmurray.org.uk/feed/")
        ("https://www.charlieharrington.com/rss.xml")
        ("https://rocks.guide/rss/")
        ("http://www.synthtopia.com/feed/" music-making)
        ("http://feeds2.feedburner.com/SlicingUpEyeballs" music)
        ("http://www.overgrownpath.com/feeds/posts/default"music)
        ("http://www.preservationsound.com/?feed=rss2")
        ("http://regenmag.com/feed/" music)
        ("http://audiocookbook.org/feed/" music-making)
        ("http://www.falconproductions.us/blog/index.xml" music-making atari)
        ("http://feeds.feedburner.com/Post-punk" music)
        ("http://www.ribbonfarm.com/feed/")
        ("http://www.marginalrevolution.com/marginalrevolution/index.rdf" bloggers)
        ("http://fatherlouie.blogspot.com/feeds/posts/default")
        ("http://eclecticlight.co/feed/" bloggers)
        ("https://publicdomainreview.org/rss.xml" commons)
        ("http://scholars-stage.blogspot.com/feeds/posts/default")
        ("http://excessreturns.wordpress.com/feed/")
        ("http://www.systemsofromance.com/blog/feed/")
        ("https://drewcoffman.com/rss")
        ("http://www.orderofthegooddeath.com/feed")
        ("http://slatestarcodex.com/feed/")
        ("http://blog.kenperlin.com/?feed=rss2" bloggers)
        ("https://sive.rs/tech.atom" bloggers)
        ("http://boston.conman.org/index.atom")
        ("https://techlearningcollective.com/feed.xml" informatics sts)
        ("https://techlearningcollective.com/feed/events.xml" informatics sts)
        ("https://leancrew.com/all-this/feed/")
        ("https://conflatedautomatons.org/feed/")
        ("https://seekingalpha.com/author/trading-places-research.xml")
        ("http://alarmingdevelopment.org/?feed=rss2")
        ("http://lambda-the-ultimate.org/rss.xml")
        ("http://www.fileformat.info/news/atom.xml")
        ("https://computer.rip/rss.xml")
        ("http://metaredux.com/feed.xml")
        ("http://blog.computationalcomplexity.org/feeds/posts/default")
        ("https://subconscious.substack.com/feed/")
        ("http://www.identitywoman.net/?feed=rss2" identity)
        ("http://www.windley.com/rss.xml" identity)
        ("http://nat.sakimura.org/feed/")
        ("http://blogs.law.harvard.edu/doc/feed/" identity)
        ("http://lockstep.com.au/blog/rss")
        ("https://reb00ted.org/index.xml")
        ("https://kyledenhartog.com/feed.xml")
        ("http://self-issued.info/?feed=rss2" identity)
        ("http://beltmag.com/feed/" chicago)
        ("https://blockclubchicago.org/feed/" chicago)
        ("http://www.publicbooks.org/tag/the-big-picture/feed" culture) ;; via arts & letters daily
        ("http://www.aldaily.com/feed/" culture)
        ("http://weeklysift.com/feed/" bloggers real-news)
        ("http://pedestrianobservations.wordpress.com/feed/" bloggers transit)
        ("http://www.foxtrot.com/feed/" comics)
        ("http://xkcd.com/rss.xml" comics)
        ("https://www.smbc-comics.com/comic/rss" comics)
        ("http://feeds.feedburner.com/PoorlyDrawnLines" comics)
        ("http://garfieldminusgarfield.net/rss" comics)
        ("http://www.loadingartist.com/feed/" comics)
        ("https://flatjournal.com/feed/")
        ("http://theartlawblog.blogspot.com/feeds/posts/default")
        ("http://beautywelove.blogspot.com/feeds/posts/default")
        ("http://feeds.feedburner.com/TheRhizomeBlogRss")
        ("https://www.niio.com/blog/feed/")
        ("http://www.aec.at/aeblog/en/feed/")
        ("https://ocula.com/magazine/feed/" culture)
        ("https://jillianhess.substack.com/feed" suchness culture) ; notebooks
        ("http://feeds2.feedburner.com/ignant" culture)
        ("https://feeds.feedburner.com/bengrosser" digital-art bloggers)
        ("https://petervanstudios.com/blog/rss" digtial-art bloggers)
        ("https://www.holo.mg/feed/" digital-art)
        ("https://blog.still-water.net/feed/")
        ("http://rhizome.org/feeds/frontpage/" digital-art)
        ("http://www.digicult.it/feed/" digital-art)
        ("http://www.creativeapplications.net/feed/" digital-art)
        ("https://artofericwayne.com/feed/" digital-art)
        ("https://pluralistic.net/feed/" sts networks)
        ("http://www.schneier.com/blog/index.rdf" bloggers networks informatics)
        ("http://tinysubversions.com/feed.xml" networks digital-art)
        ("http://redecentralize.org/blog/feed.rss" networks)
        ("https://p1k3.com/feed" bloggers)
        ("https://100r.co/links/rss.xml" digital-art informatics)
        ("https://cubicgarden.com/tag/publicserviceinternetnotes/feed/")
        ("http://thesocietypages.org/cyborgology/feed/")
        ("http://firstmonday.org/ojs/index.php/fm/gateway/plugin/WebFeedGatewayPlugin/rss2")
        ("https://hypha.coop/feed.xml")
        ("https://stratechery.com/feed/" tech-news networks)
        ("https://www.bloomberg.com/opinion/authors/ARbTQlRLRjE/matthew-s-levine.rss" tech-news)
        ("https://www.eff.org/rss/updates.xml" networks)
        ("http://intertwingled.org/feed/" networks)
        ("http://www.secretgeek.net/Rss")
        ("http://feeds.feedburner.com/TechnopolisBlog-LangdonWinner")
        ("https://silasjelley.com/feeds/everything" bloggers)
        ("http://blog.jonudell.net/feed/" bloggers)
        ("http://www.jwz.org/blog/feed/" bloggers)
        ("http://www.mkbergman.com/?feed=rss2")
        ("http://planetrdf.com/index.rdf")
        ("https://augmentedlawyer.com/feed/")
        ("https://alexanderobenauer.com/assets/feed/rss.xml")
        ("https://whimsical.club/feed.xml")
        ("http://changelog.complete.org/feed")
        ("https://www.mnot.net/blog/index.atom")
        ("https://medium.com/feed/decentralized-web" networks)
        ("https://publicinfrastructure.org/feed/" networks)
        ("https://policyreview.info/feed" networks)
        ("http://www.hiig.de/feed/" networks)
        ("https://fsfe.org/news/news.en.rss")
        ("http://whatsthebigdata.com/feed/")
        ("https://www.cyberforge.com/feed/cyberforge.xml" bloggers networks)
        ("http://www.turinepi.com/feeds/posts/default" italy)
        ("https://le-strade.com/feed/" italy)
        ("https://italicsmag.com/feed/" italy)
        ("http://www.berlinartlink.com/feed/" germany)
        ("https://berlinspectator.com/feed/" germany)
        ("http://digitalcosmonaut.com/feed/" germany)
        ("http://www.iheartberlin.de/feed/" germany)
        ("http://www.edge.org/feed" suchness)
        ("https://musingsbyken.blogspot.com/" suchness)
        ("https://feeds.feedburner.com/sciencealert-latestnews" real-news)
        ("http://brevity.wordpress.com/feed/" suchness)
        ("http://triquarterly.northwestern.edu/site-feed" chicago)
        ("https://chi.streetsblog.org/author/sharonhoyer/feed/" chicago)
        ("https://bnet.substack.com/feed/" networks)
        ("https://blog.ignaciobrasca.com/feed.xml" irl informatics)
        ("https://blog.matthoran.com/index.xml" irl)
        ("https://protesilaos.com/master.xml" irl emacs)
        ("https://blog.ignaciobrasca.com/feed" irl informatics)
        ("http://www.nathanwolek.com/feed/" irl music)
        ("http://blog.jessitron.com/feeds/posts/default" irl informatics)
        ("http://modulolotus.net/feed.xml" irl)
        ("http://danielbachler.de/feed.xml" irl)
        ("https://gist.github.com/brfid.atom")
        ("http://newcitystage.com/feed/" chicago)
        ("https://compassneedleblog.wordpress.com/feed/" irl)
        ("https://commodore.international/feed/" atari)
        ("https://oldvcr.blogspot.com/feeds/posts/default" atari)
        ("https://acjay.com/feed/" irl)
        ("http://seespotcode.net/feed.xml" irl clojure)
        ("http://gigasquidsoftware.com/atom.xml" clojure) ; Carin Meyer
        ("http://blog.fogus.me/feed/" clojure informatics)
        ("http://esoteric.codes/rss" irl digital-art)
        ("http://blog.veitheller.de/feed.rss" irl informatics)
        ("https://blog.emma.coop/read/feed/" irl)
        ("https://taylor.town/feed.xml" irl bloggers)
        ("https://livelaugh.blog/rss" bloggers) ; Jenn Schiffer
        ("http://naik.co/feed/" irl)
        ("https://www.hillelwayne.com/post/index.xml" informatics)
        ("https://southstreetdungeon.wordpress.com/feed/" irl music)
        ("http://www.meanwhilebackinpeoria.com/blog?format=rss" irl)
        ("http://artoftravelogue.blogspot.com/feeds/posts/default" irl music)
        ("http://zerolib.com/feed.xml" irl)
        ("https://schmud.de/feed.rss" irl)
        ("http://freecinemanow.blogspot.com/feeds/posts/default" irl art)
        ("https://buttondown.email/perfectsentences/rss" bloggers irl)
        ("https://www.funkatron.com/rss/" bloggers)
        ("https://www.feltpresence.com/rss/" irl)
        ("https://medium.com/feed/@ericcorrielstudios" irl)
        ("http://mackbernie.blogspot.com/feeds/posts/default" irl)
        ("https://missginsu.com/index.xml" irl)
        ("http://www.cs.uni.edu/~wallingf/blog/index.xml" irl informatics)
        ("http://feeds.feedburner.com/johnpilger" irl)
        ("https://biosrhythm.com/?feed=comments-rss2" irl atari)
        ("http://eugene-wei.squarespace.com/blog?format=rss" bloggers networks)
        ("https://realalexrubi.substack.com/feed/" real-news bloggers)
        ("https://www.mintpressnews.com/rss/" real-news)
        ("http://raymcgovern.com/feed/" real-news bloggers)
        ("https://braveneweurope.com/feed" real-news) ;; via Ray McGovern
        ("https://thegrayzone.com/feed/" real-news)
        ("https://www.os2museum.com/wp/feed/" atari)
        ("https://atari8.co.uk/blog/feed/" atari)
        ("http://romchip.org/index.php/romchip-journal/gateway/plugin/WebFeedGatewayPlugin/atom" atari)
        ("http://www.vintagecomputing.com/index.php/feed/" atari)
        ("http://www.insentricity.com/rss.cl")
        ("https://hardcoresoftware.learningbyshipping.com/feed/" atari)
        ("http://contemporary-home-computing.org/1tb/feed")
        ("https://vintagecomputerstories.blogspot.com/feeds/posts/default" atari)
        ("http://www.atariwomen.org/feed/" atari)
        ("https://www.gozgeek.com/feed/index.xml" atari)
        ("http://www.righto.com/feeds/posts/default" atari)
        ("http://atari8bitads.blogspot.com/feeds/posts/default" atari)
        ("https://goto10.substack.com/feed?utm_source=substack&utm_medium=email" atari)
        ("https://lunduke.substack.com/feed/" atari)
        ("http://sachachua.com/blog/category/emacs/feed/" emacs)
        ("http://xenodium.com/rss.xml")
        ("https://alirezahayati.com/feed/")
        ("https://api.observablehq.com/documents/@tomlarkworthy.rss" irl)
        ("https://gallant.dev/rss.xml")
        ("http://boffosocko.com/feed/" bloggers indieweb)
        ("https://ohhelloana.blog/feed.xml" bloggers indieweb)
        ("https://www.markllobrera.com/feed/feed.xml" bloggers)
        ("https://calumryan.com/feeds/articles/rss" bloggers)
        ("https://www.baldurbjarnason.com/index.xml")
        ("https://lambdaisland.com/feeds/blog.atom" clojure)
        ("https://ag91.github.io/rss.xml")
        ("https://blog.janetacarr.com/rss/" clojure)
        ("https://clojureverse.org/latest.rss" clojure)
        ("http://danlebrero.com/feed.rss")
        ("https://clojure.org/feed.xml")
        ("http://blog.acolyer.org/feed/")
        ("http://blog.klipse.tech//feed.xml")
        ("http://www.more-magic.net/feed.atom")
        ("http://rachelbythebay.com/w/atom.xml")
        ("http://vvvvalvalval.github.io/feed.xml" clojure)
        ("http://insideclojure.org/feed.xml" clojure)
        ("http://planet.clojure.in/atom.xml" clojure)
        ("http://seancorfield.github.io/atom.xml" clojure)
        ("https://solar.lowtechmagazine.com/feeds/all.rss.xml" networks sts)
        ("http://reallifemag.com/feed/" sts)
        ("https://rootsofprogress.org/feed.xml" sts)
        ("https://ndc.substack.com/feed/" networks)
        ("https://twobithistory.org/feed.xml" networks)
        ("https://reboothq.substack.com/feed/" networks)
        ("https://techpolicy.press/feed/" networks)
        ("https://stop.zona-m.net/feed.xml" networks)
        ("http://feeds.feedburner.com/shortformblog/feed")
        ("http://tedium.co/rss/" sts)
        ("https://mkirschenbaum.wordpress.com/feed" sts)
        ("https://syllabusproject.org/rss" sts)
        ("https://technicshistory.wordpress.com/feed/")
        ("https://interconnected.org/home/feed"  bloggers networks)
        ("https://blog.dshr.org/feeds/posts/default")
        ("https://thenewinquiry.com/rss" culture)
        ("https://themarkup.org/feeds/rss.xml" sts)
        ("http://www.filfre.net/feed/" sts)
        ("https://defector.com/feed/" sports)
        ("http://screenwritingfromiowa.wordpress.com/feed/" film)
        ("https://draculadaily.substack.com/feed")
        ("http://www.davidbordwell.net/blog/feed/atom/")
        ("http://www.aphotoeditor.com/feed/" film)
        ("http://www.therestisnoise.com/atom.xml" music)
        ("http://gregmankiw.blogspot.com/feeds/posts/default")
        ("http://feeds.feedburner.com/ideamensch")
        ("http://blog.blcklst.com/feed/")
        ("http://feeds.feedburner.com/MrMoneyMustache")
        ("http://shkspr.mobi/blog/feed/" bloggers)
        ("https://tirkarthi.github.io/feed.xml" clojure)
        ("http://rss.slashdot.org/Slashdot/slashdot" tech-news)
        ("https://wise.readwise.io/feed/" tech-news)
        ("https://crookedtimber.org/" bloggers pundits) ;; via jack
        ("https://doc.searls.com/feed" networks identity)
        ("http://projectvrm.org/feed/" networks identity)
        ("https://www.customerfutures.com/feed/" networks)
        ("https://queue.acm.org/rss/feeds/articles.xml" informatics)
        ("https://spectrum.ieee.org/feeds/feed.rss" informatics)
        ("https://lars.ingebrigtsen.no/feed" emacs bloggers)
        ("https://michal.sapka.me/" emacs bloggers)
        ("https://vhbelvadi.com/rss" networks bloggers) ;; via indieweb
        ("https://thedialrss.com/combined-rss/" sts networks) ;; via nettime
        ("https://sirupsen.com/atom.xml" informatics) ;; via Readwise newsletter
        ("https://medium.com/feed/@sts-news" sts irl)
        ("https://deprogrammaticaipsum.com/rss" sts)
        ("https://www.sicpers.info/blog/rss" informatics)
        ("https://www.sloweb.org/en/" clojure emacs)
        ("https://manuelmoreale.com/feed/rss" bloggers) ;; blogs and people
        ("http://www.paulgraham.com/rss.html" tech-news informatics networks)))
