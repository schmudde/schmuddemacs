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
        ("http://www.dlederle.com/feed.xml" sts informatics bloggers) ;; Gallery 404
        ("https://blog.khinsen.net/feeds/all.rss.xml" bloggers commons sts)
        ("https://everybodyslibraries.com/feed" commons)
        ("http://www.craigmurray.org.uk/feed/")
        ("https://www.charlieharrington.com/rss.xml")
        ("http://www.synthtopia.com/feed/" music-making)
        ("http://feeds2.feedburner.com/SlicingUpEyeballs" music)
        ("http://www.overgrownpath.com/feeds/posts/default" music)
        ("http://regenmag.com/feed/" music)
        ("http://audiocookbook.org/feed/" music-making)
        ("http://feeds.feedburner.com/Post-punk" music)
        ("http://www.ribbonfarm.com/feed/")
        ("http://www.marginalrevolution.com/marginalrevolution/index.rdf" bloggers)
        ("http://fatherlouie.blogspot.com/feeds/posts/default")
        ("http://eclecticlight.co/feed/" bloggers)
        ("https://publicdomainreview.org/rss.xml" commons)
        ("http://scholars-stage.blogspot.com/feeds/posts/default")
        ("http://excessreturns.wordpress.com/feed/")
        ("http://www.systemsofromance.com/blog/feed/")
        ("http://www.orderofthegooddeath.com/feed")
        ("http://slatestarcodex.com/feed/")
        ("https://sive.rs/tech.atom" bloggers)
        ("http://boston.conman.org/index.atom")
        ("https://techlearningcollective.com/feed.xml" informatics sts)
        ("https://techlearningcollective.com/feed/events.xml" informatics sts)
        ("https://conflatedautomatons.org/feed/")
        ("https://seekingalpha.com/author/trading-places-research.xml")
        ("http://lambda-the-ultimate.org/rss.xml")
        ("http://www.fileformat.info/news/atom.xml")
        ("https://computer.rip/rss.xml")
        ("http://metaredux.com/feed.xml")
        ("http://blog.computationalcomplexity.org/feeds/posts/default")
        ("https://subconscious.substack.com/feed/")
        ("http://nat.sakimura.org/feed/")
        ("http://lockstep.com.au/blog/rss")
        ("https://reb00ted.org/index.xml")
        ("https://kyledenhartog.com/feed.xml")
        ("http://beltmag.com/feed/" chicago)
        ("https://blockclubchicago.org/feed/" chicago)
        ("http://www.publicbooks.org/tag/the-big-picture/feed" culture) ;; via arts & letters daily
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
        ("https://www.holo.mg/feed/" digital-art)
        ("https://blog.still-water.net/feed/")
        ("http://rhizome.org/feeds/frontpage/" digital-art)
        ("http://www.digicult.it/feed/" digital-art)
        ("http://www.creativeapplications.net/feed/" digital-art)
        ("https://artofericwayne.com/feed/" digital-art)
        ("https://pluralistic.net/feed/" sts networks)
        ("http://www.schneier.com/blog/index.rdf" bloggers networks informatics)
        ("http://redecentralize.org/blog/feed.rss" networks)
        ("https://p1k3.com/feed" bloggers)
        ("https://100r.co/links/rss.xml" digital-art informatics)
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
        ("https://www.cyberforge.com/feed/cyberforge.xml" bloggers networks)
        ("http://www.turinepi.com/feeds/posts/default" italy)
        ("https://le-strade.com/feed/" italy)
        ("https://italicsmag.com/feed/" italy)
        ("http://www.berlinartlink.com/feed/" germany)
        ("http://digitalcosmonaut.com/feed/" germany)
        ("http://www.iheartberlin.de/feed/" germany)
        ("http://www.edge.org/feed" suchness)
        ("https://feeds.feedburner.com/sciencealert-latestnews" real-news)
        ("http://brevity.wordpress.com/feed/" suchness)
        ("https://chi.streetsblog.org/author/sharonhoyer/feed/" chicago irl)
        ("https://bnet.substack.com/feed/" networks irl)
        ("https://jackrusher.com/feed.xml" irl)
        ("https://blog.ignaciobrasca.com/feed.xml" irl informatics)
        ("https://blog.matthoran.com/index.xml" irl)
        ("https://protesilaos.com/master.xml" irl emacs)
        ("https://blog.ignaciobrasca.com/feed" irl informatics)
        ("http://www.nathanwolek.com/feed/" irl music)
        ("http://blog.jessitron.com/feeds/posts/default" irl informatics)
        ("http://danielbachler.de/feed.xml" irl)
        ("https://gist.github.com/brfid.atom")
        ("http://newcitystage.com/feed/" chicago)
        ("https://compassneedleblog.wordpress.com/feed/" irl)
        ("https://breakintochat.com/blog/rss" atari) ;; St. Louis guy
        ("https://commodore.international/feed/" atari)
        ("https://atariprojects.org/feed/" atari) ;; vai goto 10
        ("https://oldvcr.blogspot.com/feeds/posts/default" atari)
        ("https://acjay.com/feed/" irl)
        ("http://seespotcode.net/feed.xml" irl clojure)
        ("http://gigasquidsoftware.com/atom.xml" clojure) ; Carin Meyer
        ("http://blog.fogus.me/feed/" clojure informatics)
        ("http://esoteric.codes/rss" irl digital-art)
        ("http://blog.veitheller.de/feed.rss" irl informatics)
        ("https://blog.emma.coop/read/feed/" irl)
        ("https://taylor.town/feed.xml" irl bloggers)
        ("https://livelaugh.blog/rss.xml" bloggers) ; Jenn Schiffer
        ("https://www.hillelwayne.com/post/index.xml" informatics)
        ("https://southstreetdungeon.wordpress.com/feed/" irl music)
        ("http://artoftravelogue.blogspot.com/feeds/posts/default" irl music)
        ("https://schmud.de/feed.rss" irl)
        ("http://freecinemanow.blogspot.com/feeds/posts/default" irl art)
        ("https://buttondown.email/perfectsentences/rss" bloggers irl)
        ("https://www.funkatron.com/rss/" bloggers)
        ("https://www.feltpresence.com/rss/" irl)
        ("https://medium.com/feed/@ericcorrielstudios" irl)
        ("http://mackbernie.blogspot.com/feeds/posts/default" irl)
        ("http://www.cs.uni.edu/~wallingf/blog/index.xml" irl informatics)
        ("http://feeds.feedburner.com/johnpilger" irl)
        ("https://realalexrubi.substack.com/feed/" real-news bloggers)
        ("https://www.mintpressnews.com/rss/" real-news)
        ("http://raymcgovern.com/feed/" real-news bloggers)
        ("https://braveneweurope.com/feed" real-news) ;; via Ray McGovern
        ("https://thegrayzone.com/feed/" real-news)
        ("https://www.os2museum.com/wp/feed/" atari)
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
        ("https://lunduke.substack.com/feed/" atari)
        ("http://sachachua.com/blog/category/emacs/feed/" emacs)
        ("http://xenodium.com/rss.xml")
        ("https://alirezahayati.com/feed/")
        ("https://api.observablehq.com/documents/@tomlarkworthy.rss" irl)
        ("https://gallant.dev/rss.xml")
        ("http://boffosocko.com/feed/" bloggers indieweb)
        ("https://ohhelloana.blog/feed.xml" bloggers indieweb)
        ("https://www.markllobrera.com/feed/feed.xml" bloggers)
        ("https://www.baldurbjarnason.com/index.xml")
        ("https://lambdaisland.com/feeds/blog.atom" clojure)
        ("https://ag91.github.io/rss.xml")
        ("https://blog.janetacarr.com/rss/" clojure)
        ("https://clojureverse.org/latest.rss" clojure)
        ("http://danlebrero.com/feed.rss")
        ("https://clojure.org/feed.xml") ;; Clojure Dref by Alex Miller
        ("http://blog.klipse.tech//feed.xml")
        ("http://www.more-magic.net/feed.atom")
        ("http://vvvvalvalval.github.io/feed.xml" clojure)
        ("http://insideclojure.org/feed.xml" clojure)
        ("http://planet.clojure.in/atom.xml" clojure)
        ("http://seancorfield.github.io/atom.xml" clojure)
        ("http://reallifemag.com/feed/" sts)
        ("https://rootsofprogress.org/feed.xml" sts)
        ("https://ndc.substack.com/feed/" networks)
        ("https://twobithistory.org/feed.xml" networks)
        ("https://reboothq.substack.com/feed/" networks)
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
        ("http://gregmankiw.blogspot.com/feeds/posts/default")
        ("http://feeds.feedburner.com/ideamensch")
        ("http://blog.blcklst.com/feed/")
        ("http://feeds.feedburner.com/MrMoneyMustache")
        ("https://tirkarthi.github.io/feed.xml" clojure)
        ("http://rss.slashdot.org/Slashdot/slashdot" tech-news)
        ("https://wise.readwise.io/feed/" tech-news bloggers)
        ("https://www.customerfutures.com/feed/" networks)
        ("https://queue.acm.org/rss/feeds/articles.xml" informatics)
        ("https://spectrum.ieee.org/feeds/feed.rss" informatics)
        ("https://lars.ingebrigtsen.no/feed" emacs bloggers)
        ("https://vhbelvadi.com/rss" networks bloggers) ;; via indieweb
        ("https://thedialrss.com/combined-rss/" sts networks) ;; via nettime
        ("https://sirupsen.com/atom.xml" informatics) ;; via Readwise newsletter
        ("https://medium.com/feed/@sts-news" sts irl)
        ("https://deprogrammaticaipsum.com/index.xml" sts)
        ("https://www.inkandswitch.com/index.xml" informatics irl)
        ("https://newsletter.futureofcoding.org/rss.xml" informatics irl)
        ("https://blog.zgp.org/feed.xml" networks informatics) ;; via mastodon, VRM
        ("https://www.steveherman.press/feed" real-news) ;; via mastodon
        ("https://parkerhiggins.net/feed.xml" sts) ;; via mastodon
        ("https://blog.sigplan.org/feed/" informatics)
        ("http://neural.it/customfeed/all.php" culture sts) ;; https://neural.it/rss-feeds/
        ("https://manuelmoreale.com/feed/rss" bloggers) ;; blogs and people
        ("https://100r.co/links/rss.xml" culture informatics)
        ("https://battellemedia.com/feed" networks) ;; dot social podcast
        ("https://evanp.me/feed" networks) ;; dot social podcast
        ("https://laughingmeme.org//feed.xml" networks)
        ("https://tuxar.uk/feed/" informatics) ;; beautiful turing essays
        ("https://omar.website/posts/index.xml" networks culture bloggers digital-art) ;; https://folk.computer via Adrian KTC
        ("https://feeds.pinboard.in/rss/u:vorizi/" informatics chicago) ;; via Komar and Melamid net.art on pinboard
        ("https://donotresearch.substack.com/feed" digital-art)
        ("https://interconnected.org/home/feed" networks) ;; via Samuel Arbesman
        ("https://maggieappleton.com/rss.xml" networks bloggers) ;; via indieweb
        ("https://chriscoyier.net/feed/" networks) ;; code pen guy
        ("https://adactio.com/journal/rss" bloggers networks) ;; indieweb
        ("https://www.idieyoudie.com/feed/" music)
        ("https://feeds.feedburner.com/Rsaudio" music)
        ("https://rodneyanonymous.com/feed/" music)
        ("https://dynomight.net/feed.xml" bloggers) ;; MichaelMF on reddit
        ("https://www.candyforbreakfast.email/feed" bloggers) ;; MichaelMF on reddit
        ("https://chasem.co/feed.xml" bloggers indieweb) ; BtF
        ("https://constantine.name/feed/" bloggers indieweb) ; BtF
        ("http://manuelmoreale.com/feed/rss" bloggers indieweb) ; people & blogs
        ("http://www.daemonology.net/hn-daily/index.rss" real-news)
        ("https://stephango.com/feed.xml" bloggers) ; taylor
        ("https://www.benkuhn.net/index.xml" bloggers) ; taylor
        ("https://www.jamesreeves.co/rss/" digital-art bloggers)
        ("https://feeds.feedburner.com/blogspot/musingsbyken" suchness) ; Broken?
        ("https://rocks.guide/feed.rss") ; Broken?
        ("http://www.aaronsw.com/2002/feeds/pgessays.rss" tech-news informatics networks)
        ("https://techpolicy.press/rss/feed.xml" networks)
        ("https://musings.tychi.me/feed/" digital-art bloggers) ;; Solid artist
        ("http://www.meanwhilebackinpeoria.com/blog?format=rss" irl)
        ("https://www.calmabiding.me/rss" irl clojure)  ;; Stephen Castro-Starkey
        ("https://audreywatters.com/feed" bloggers) ; via Wallingford
        ("https://www.grazielelautenschlaeger.com/feed/" digital-art irl) ;; xCoAx 2024
        ("https://biosrhythm.com/?feed=comments-rss2" irl atari)
        ("http://www.preservationsound.com/?feed=rss2")
        ("http://alarmingdevelopment.org/?feed=rss2")
        ("http://www.mkbergman.com/?feed=rss2")
        ("http://eugene-wei.squarespace.com/blog?format=rss" bloggers networks)
        ("https://goto10.substack.com/feed?utm_source=substack&utm_medium=email" atari)
        ("https://www.ben-evans.com/benedictevans?format=rss" informatics) ;; recommended by Adam Lofbomm
        ("https://www.menimagerie.com/a-glass-menagerie-of-insight?format=rss" bloggers networks)
        ("https://www.wheresyoured.at/rss/" tech-news)
        ("https://thedialrss.com/combined-rss/" culture)
        ("http://dhs.nu/rssnews.php" atari)
        ("https://www.anildash.com/feed.xml" bloggers tech-news)
        ("https://randomcha.net/feed/" culture chicago)
        ("https://world.hey.com/dhh/feed.atom" tech-news)
        ("https://feedpress.me/coryd" bloggers)
        ("https://tomcritchlow.com/feed" bloggers)
        ("https://morrick.me/feed" bloggers) ;; italian
        ("https://blog.archive.org/author/jasonscott/feed/" sts) ;; preservation
        ("https://blog.dshr.org/feeds/posts/default?alt=rss" sts)  ;; preservation
        ("https://9to5linux.com/feed/atom" tech-news)
        ("https://paleofuture.com/blog?format=rss" sts)
        ("https://www.evalapply.org/index.xml" clojure)
        ("https://blog.m4ra.net/rss/" bloggers)
        ("https://www.nakedcapitalism.com/feed" real-news)
        ("https://prescheme.org/rss.xml" clojure informatics)
        ("https://chsmc.org/feed.xml" bloggers sts) ; shared different itnernet
        ("https://www.dbreunig.com/feed.xml" bloggers sts) ; cultural anthropology, computer science, and media.
        ("https://joshleeb.com/index.xml" bloggers informatics) ; shared different internet
        ("https://notes.brooklynzelenka.com/index.xml" irl informatics) ; Brooklyn Elizabeth Zelenka
        ("http://feeds.feedburner.com/s-usih") ; https://ooh.directory
        ("http://www.erasmatazz.com/index.xml" atari) ; chris crawford
        ("https://lethain.com/feeds.xml" tech-news) ;; via amazing cto
        ("https://www.flyingpenguin.com/?feed=rss2" irl)
        ("https://berjon.com/feed.atom" networks)
        ("https://gancio.cisti.org/feed/rss?show_recurrent=true" italian) ; todo in Turin
        ("https://www.are.na/parker-gibbons/a-new-internet-fylzq4dvmue/feed/rss" networks)
        ("https://hans.gerwitz.com/feeds/notes.rss" bloggers)
        ("https://www.theculturium.com/feed/" culture) ;; Parabola-like
        ("https://www.erininthemorning.com/feed" culture) ;; via Jenny (doubel check feed)
        ("https://alexanderobenauer.com/assets/feed/rss.xml" networks) ; research via Taylor
        ("https://arjandhakal.com.np/rss.xml" irl informatics)
        ("https://blog.weareopen.coop/feed" networks) ;; Doug Belshaw
        ("https://dougbelshaw.com/blog/feed" irl networks) ;; Doug Belshaw
        ("https://www.zylstra.org/blog/feed/" identity bloggers)
        ("http://www.windley.com/rss.xml" identity)
        ("http://blogs.law.harvard.edu/doc/feed/" identity)
        ("https://doc.searls.com/feed" networks identity)
        ("http://projectvrm.org/feed/" networks identity)
        ("http://www.identitywoman.net/?feed=rss2" identity)
        ("http://self-issued.info/?feed=rss2" identity)
        ("https://hendersoni.substack.com/feed" identity) ;; via Doc
        ("https://leancrew.com/all-this/feed/" informatics)
        ("https://onetwoxu.de/language/en/feed/" music)
        ("https://buttondown.email/local-first/rss" local-first)
        ("https://petervanstudios.com/blog/rss" digtial-art bloggers)
        ("https://cubicgarden.com/tag/publicserviceinternetnotes/feed/")
        ("https://atari8.co.uk/blog/feed/" atari)
        ("https://solar.lowtechmagazine.com/feeds/all.rss.xml" networks sts)
        ("http://shkspr.mobi/blog/feed/" bloggers)
        ("https://www.sicpers.info/blog/rss" informatics)
        ("https://blog.bmannconsulting.com/feed.xml" informatics irl)
        ("https://rknight.me/feed.xml" bloggers)
        ("https://sonnet.io/feed.xml" networks) ; taylor
        ("https://michal.sapka.pl/rss.xml" emacs bloggers)
        ("https://standardebooks.org/feeds/rss/new-releases" culture commons)
        ("https://www-users.tebibyte.io/~yihanwu1024/feed" networks)


        ;; new
        ("file:///home/schmudde/Downloads/Tzei1YPK" sts)
        ("https://modulolotus.net/rss.xml" irl)
        ("https://busterbenson.com/atom.xml" bloggers)
        ("https://dtinit.org/feed.xml" identity)
        ("https://ciechanow.ski/atom.xml" informatics)
        ("https://gwern.substack.com/feed" bloggers)
        ("https://froghat.ca/feeds/blog.rss.xml" informatics)
        ("https://macwright.com/rss.xml" bloggers)
        ("https://rocco.substack.com/feed" irl)
        ("https://rss.beehiiv.com/feeds/k9MJunEkZy.xml" culture) ;; ness labs
        ("https://elpis.ws/rss.xml" networks)
        ("https://brainwashed.com/index.php?option=com_content&view=category&layout=blog&id=167&Itemid=855&format=feed&type=rss" culture)
        ("file:///home/schmudde/Downloads/cEzFZGTm" informatics)
        ("https://driesdepoorter.be/feed/" culture) ;; digital artist via Torino Tom
        ("https://www.1bluebass.com/feed/" irl) ;; Nuria's husband
        ("https://programmingsimplicity.substack.com/feed" informatics) ;; Future of Programming
        ("https://fromthesuperhighway.com/rss.xml" networks) ;; indieweb
        ("https://existentialcrunch.substack.com/feed" networks) ;; via sam arbesman
        ("https://cybercultural.com/feed.xml" networks sts)
        ("https://arcmag.org/feed/" culture) ;; via sam arbesman
        ("https://www.asimov.press/feed?sectionId=178427" science) ;; via sam arbesman
        ("https://emacsredux.com/atom.xml" emacs)
        ("https://antigonejournal.com/feed/" culture)
        ("https://languagehat.com/feed/" bloggers culture)
        ("https://mjulius.com/feed/" bloggers culture)
        ("http://www.comune.torino.it/bici/feed/" italy)
        ("http://www.comune.torino.it/verdepubblico/feed/" italy)
        ("https://www.exhibito.it/feed/" italy)
        ("https://www.artnews.com/t/link-rot/feed/" culture commons) ; via Transfer Gallery
        ("https://blog.jj5.net/blog/feed/" bloggers) ; BtF contact
        ("http://app1.wastholm.com/?format=rss" bloggers) ; BtF contact
        ("https://davidgasquez.com/rss.xml" informatics)
        ("https://jointhefreeworld.org/rss.xml" informatics)
        ("https://www.soundsandwords.io//feed.xml" irl informatics) ; evan from Yorba
        ("https://brianmckenna.org/blog/feed" informatics) ; old twitter follow
        ("https://downtowncritic.net/rss" culture) ;; book on collecting art
        ("https://ctosub.com/feed" informatics) ;; cto
        ("https://akos.ma/index.xml" sts) ;; De Programmatica Ipsum
        ;; ("https://www.therestisnoise.com/atom.xml" music) ;; was 403
        ;; ("http://tinysubversions.com/feed.xml" networks digital-art) unknown feed type
        ;; ("https://crookedtimber.org/feed/" bloggers pundits) ;; via jack: poor formatting
        ;; ("https://calumryan.com/feeds/articles/rss" bloggers) 400
        ;; ("http://rachelbythebay.com/w/atom.xml") ;; atom 403

        )
      )
