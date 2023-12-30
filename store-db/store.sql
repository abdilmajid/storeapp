--Creates orders table
CREATE TABLE orders (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name character varying(255),
    email character varying(255)
);


--Creates products table
CREATE TABLE products (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name character varying(255),
    image character varying(255),
    description character varying(500),
    price character varying(6)
);

--Creates order_items table
CREATE TABLE order_items (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    qty integer,
    order_id integer REFERENCES orders(id),
    product_id integer REFERENCES products(id),
    products jsonb
);


INSERT into products (name, image, description, price) 
VALUES 
    ('I am Groot', '/products/1-groot.jpg', 'This stuffed Groot makes an excellent toy for both youngsters due to its soft nature and adorable design', '19.99'),

    ('Buzz Lightyear Action Doll', '/products/2-buzz.jpg', 'Buzz Lightyear is a favorite of youngsters. He has a ray-gun, wings that can be retracted or extended on the push of a button, and a grin that could make any alien get a chill up their spine - should they have one.', '38.50'),

    ('Minion Dave', '/products/3-minion-dave.jpg', 'Dave is a two-eyed and medium-sized minion with nice combed hair. This plush version of him is extremely huggable and makes a great best friend for your young child. He is stitched well and has no small parts to choke one', '12.99'),
    
    ('Minion Kevin', '/products/4-minion-kevin.jpg', 'Kevin is a tall, two-eyed minion with sprout cut hair and is usually seen wearing his golf apparel. This plush version of him is extremely huggable and makes a great best friend for your young child. He is stitched well and has no small parts to choke on.', '12.99'),
    
    ('Minion Bob', '/products/5-minion-bob.jpg', 'Bob is a short and bald minion with multi-colored eyes (green and brown). He often carries around a teddy bear that he owns called Tim, which is brown with yellow buttoned eyes.', '12.99'),

    ('Lego City', '/products/6-logo-city.jpg', 'LEGO City Fire Station has 2 garages and a firehouse with 3 floors and a fire pole, in 3 modular sections to build, with a total of 9 combinations for the main firehouse and garages.', '23.99'), 

    ('Lego Toy Story', '/products/7-lego-toy-story.jpg', 'With only seconds to spare, Sheriff Woody rides his trusty horse Bullseye across the desert to rescue Jessie from a gold mine filled with dynamite...Includes Woody, Jessie, Bullseye and Stinky Pete the Prospector minminifigures.', '22.99'),

    ('Lego Batmobile', '/products/8-lego-batmobile.jpg', 'This set from THE LEGO BATMAN MOVIE features the Batmobile with a dual cockpit for Batman and Robin, two stud shooters and multidirectional wheels for three different modesrace mode, monster truck mode and parallel-parking mode.', '28.99'),

    ('Lego Police', '/products/9-lego-police.jpg', 'Motor to the action and help keep LEGO City safe! Sitting in the control center, the detective alerts the police officer that the robber is escaping in a sports car with a bar of gold.', '39.99'),

    ('Lego Millennium Falcon', '/products/10-lego-millennium-falcon.jpg', 'Escape from the Death Star in the iconic GO Star Wars Millennium Falcon!.Featuring Han Solo, Luke Skywalker, Chewbacca, Ben Kenobi, Princess Leia and Darth Vader, can you rewrite history and help Ben Kenobi defeat his evil nemesis from the dark side?', '44.99'),

    ('Electric Guitar', '/products/11-electric-guitar.jpg', 'Give your little rock star a dream start with this super cool electric guitar especially designed for young musicians. Built to the highest standards this instrument is perfectly suited to a child really wanting to learn how to play.', '64.99'), 

    ('Ukelele', '/products/12-ukelele.jpg', 'Ukulele is a great way to take laid-back tropical atmospheres anywhere, whether you are strumming in a hammock on the beach or kicked back in a recliner in your living room, a ukulele is a great way to spread some good vibrations.', '34.99'), 

    ('Flute', '/products/13-flute.jpg', 'This recorder is easy to play with precise, uniform intonation for players of all levels. The Baroque fingering system is one of the most popular fingering options. This is a very durable plastic ideal for student recorders.', '5.99'), 

    ('Drums', '/products/14-drums.jpg', 'This rock drum set is styled in metallic silver and is ideal for want to be rockers. Complete with a 385 mm bass drum with pedal, two 170 mm side drums, one 210 mm side drum, a 236 mm snare drum, a 210 mm cymbal, two drumsticks and a stool.', '13.99'), 

    ('Mario Kart', '/products/15-mario-kart.jpg', 'Ever wonder what would happen if your Mario Kart RC got struck by lightning? It would shrink down of course! The World of Nintendo is happy to bring you the new Mini RC Racer.', '38.99'), 

    ('Gyarados pokemon', '/products/16-gyarados.jpg', 'Gyarados rises from the depths with this buildable Pokemon! With its fierce temper and intimidating attacks, it takes a true Trainer to battle a Pokemon like Gyarados.', '19.99'), 

    ('Mario Monopoly', '/products/17-mario-3.jpg', 'This sequel to the Monopoly Gamer board game joins forces with Nintendo Mario Kart characters and elements. Move around the gameboard as Mario, Princess Peach, Luigi, or Toad; buy iconic Mario Kart properties such as Bowsers Castle, and Rainbow Road.', '10.99'),

    ('Guardians Funko POP', '/products/18-guardians-funko-pop.jpg', 'From Guardians of the Galaxy 2, Star Lord, as a stylized POP vinyl from Funko! Figure stands 3 3/4 inches and comes in a window display box. Check out the other Guardians of the Galaxy 2 figures from Funko! Collect them all!.', '12.99'), 

    ('Deadpool vs The World', '/products/19-deadpool.jpg', 'Deadpool vs The World, a hilarious party game for mature audiences. Featuring 100 custom illustrations of Deadpool in strange and unsightly situations. The player who best describes Deadpools compromising situations wins.', '20.99'), 

    ('Avengers Hero Inventor Kit', '/products/20-avengers-hero-inventor-kit.jpg', 'Kids join the Marvel Avengers to become their own Super heroes by building and customizing their high-tech hero gear and unique identity with littleBits electronic blocks.', '54.99');

