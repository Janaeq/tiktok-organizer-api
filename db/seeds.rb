# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CATEGORIES
coffee = Category.create(id: 1, name: "Coffee")
cats = Category.create(id: 2, name: "Cats")

# VIDEOS
sample_video = Video.create(
    url: "https://www.tiktok.com/@caffeinication/video/6940339533191957765", 
    category_id: 1, embed_html: '<blockquote class="tiktok-embed" cite="https://www.tiktok.com/@caffeinication/video/6940339533191957765" data-video-id="6940339533191957765" style="max-width: 605px;min-width: 325px;" > <section> <a target="_blank" title="@caffeinication" href="https://www.tiktok.com/@caffeinication">@caffeinication</a> <p>Do Not Miss the Ending😍🤩 <a title="caffeinication" target="_blank" href="https://www.tiktok.com/tag/caffeinication">#caffeinication</a> <a title="foodontiktok" target="_blank" href="https://www.tiktok.com/tag/foodontiktok">#foodontiktok</a> <a title="coffee" target="_blank" href="https://www.tiktok.com/tag/coffee">#coffee</a> <a title="icedcoffee" target="_blank" href="https://www.tiktok.com/tag/icedcoffee">#icedcoffee</a></p> <a target="_blank" title="♬ Gymnopedie No. 1 - Relaxing Piano Consort" href="https://www.tiktok.com/music/Gymnopedie-No-1-6709395969600915457">♬ Gymnopedie No. 1 - Relaxing Piano Consort</a> </section> </blockquote> <script async src="https://www.tiktok.com/embed.js"></script>', 
    thumbnail_url: "https://p16-sign-va.tiktokcdn.com/obj/tos-maliva-p-0068/0d6565614dfc4899bdf0983473a56116_1615923743?x-expires=1618192800&x-signature=fePg6AcaBdjmpQhlhnRFvf5kf7w%3D"
)