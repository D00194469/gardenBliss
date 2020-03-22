-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 10:42 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gardening`
--

-- --------------------------------------------------------

--
-- Table structure for table `garden`
--

CREATE TABLE `garden` (
  `gardenID` int(3) NOT NULL,
  `gardenName` varchar(30) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garden`
--

INSERT INTO `garden` (`gardenID`, `gardenName`, `width`, `height`, `userID`) VALUES
(1, 'MyBackgarden', 5, 9, 1),
(2, 'MyFrontgarden', 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gardenplants`
--

CREATE TABLE `gardenplants` (
  `gardenID` int(3) NOT NULL,
  `plantID` int(3) NOT NULL,
  `qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gardenplants`
--

INSERT INTO `gardenplants` (`gardenID`, `plantID`, `qty`) VALUES
(1, 1, 20),
(1, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plantID` int(3) NOT NULL,
  `plantName` varchar(40) NOT NULL,
  `plantImage` varchar(50) NOT NULL,
  `plantIcon` varchar(50) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `season` varchar(60) NOT NULL,
  `soil` varchar(30) NOT NULL,
  `placement` varchar(30) NOT NULL,
  `watering` varchar(30) NOT NULL,
  `distance` varchar(30) NOT NULL,
  `depth` varchar(30) NOT NULL,
  `Harvesting` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `plantTagline` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plantID`, `plantName`, `plantImage`, `plantIcon`, `description`, `season`, `soil`, `placement`, `watering`, `distance`, `depth`, `Harvesting`, `type`, `plantTagline`) VALUES
(1, 'Carrot', 'carrot.jpg', 'carrotIcon.png', 'Carrot is an erect plant, 30-100 cm in height, the root is the vegetable and it is the edible part. They are taste and popular root vegetables. Carrots can be eaten raw or cooked in various dishes. It is crunchy and very nutritious.  There are two types of carrots to choose from when planting. Early varieties which are usually sown in spring and ready to be harvested 10 weeks later and late varieties which can be plant from the end of spring and are ready to be harvested about 14- 16 weeks after.', 'March, April, May, June', 'Sandy', 'Sun', '1.5 litres', '30 cm', '1-2 cm', 'July, August', 'vegetable', 'Carrot is one of the top 10 of the most economically important global vegetable crops, the simple reason why you must plant your own carrots.'),
(2, 'Apple', 'apple.jpg', 'appleIcon.png', 'Apple fruits are round shaped and range in colour from green to red. When an apple is planted from seed, it can take six to ten years to mature and produce fruits. The trees are small to medium sized reaching height of 5-10m (16.4-32.8ft). Apples are high in vitamin C and can be used in different  recipes, juice and drinks.', 'January, February, March', 'loam', 'Sun', '16 ml', '300 cm', '60 cm', ' August, September, October', 'fruit', 'Even in a small space you can plant a hedge of dwarf apple trees and yield a successful crop in your small garden.'),
(3, 'Garlic', 'garlic.jpg', 'garlicIcon.png', 'Garlic is a plant in the onion family and each part of garlic bulb is called clove. Garlic contains a lot of nutrients and it is filled with vitamins and minerals. It is easy to grow in the garden and very low maintenance. It could be grown in a container or any space that you have available. Garlic can be used as flavour and added as a spice to soup, curries and stir. There are two main types of garlic that can be planted, the hard neck and the soft neck varieties. The Hard neck garlic varieties produce edible flower stem which can be used in salads and stir fries. This is a good choice to plant if you need to use the stems and the bulbs. Soft neck on the other hand does not produce stem but can be stored for a longer period after harvest.', 'November, December, January, February, M', 'Sandy', 'Sun', '6 litres per week', '10-15 cm', '2.5 cm', 'June, July, August', 'vegetable', 'Growing your own garlic is easy, and means you’ll have a fantastic homegrown alternative to the tasteless imported garlic found on many supermarket shelves.'),
(4, 'Pepper', 'peppers.jpg', 'pepperIcon.png', 'Bell pepper can be referred to as red pepper, yellow pepper or green pepper. Bell pepper can be eaten fresh as salad, vegetables, or cooked in a variety of dishes. There are two type of pepper, chilli peppers and bell pepper. Chilli peppers are small and have a hot flavour while the bell peppers are larger and milder in flavour.', 'June, July', 'Sandy', 'Sun', '4 litres', '2.5cm', '1cm', 'August', 'vegetable', 'Peppers are fruit because they are produced from a flowering plant and contain seeds, however most people think of them as vegetables.'),
(5, 'Onion', 'onion_2.jpg', 'onionIcon.png', 'Onions are one of the most popular vegetables for growing in home gardens and are one of the easiest crops of spring. They take little space so they can be planted in a row or two or between other crops or can be planted in containers. Onion sets are onions that were planted from last year. When planting onion, you can grow your own and save the sets from the previous year or you could buy onion sets ready to plant.', 'April, May', 'Loamy', 'Sun', '17 ml', '15cm', '2.5cm', 'August', 'vegetable', 'Did you can know that you can peel or cut an onion without crying if you cut the root end last and if the onion is cold.'),
(6, 'Potato', 'potatoe_2.jpg', 'potatoIcon.png', ' Potatoes is a vegetable and a tuber plant. There are more than 100 types of potatoes, but white and red skinned types are common in-home garden because of their taste and texture. Potatoes are a cool-seasoned crop that is why they grow well in Ireland. Potatoes can also tolerate light frost weather. Potatoes have Earlies and Maincrop sowing type. Earlies potatoes grow quickly, they have no skin and usually out of the soil before blight arrives. Maincrop develop very much later, produce more potatoes and develop thicker skin but they are affected blight as they are in the ground in summer.', 'March', 'Loam', 'Sun', '17 ml', '25 cm', '10 - 15 cm', 'July', 'Vegetable', 'Potatoes are a very good source of vitamin B6 and a good source of potassium, copper, vitamin C, and dietary fibre.'),
(7, 'Broccoli', 'broccoli.jpg', 'broccoli.png', 'This is an edible green plant in the cabbage family, it is large flowing head and stalk and it is eaten as a vegetable. Broccoli is rich in vitamins and minerals and is a good source of vitamins, iron and fibre. Remember just one cup of broccoli can give over 100percent of your daily needs of vitamin C and is also a good source of vitamin A. So, adding broccoli to your diet is very good for your body. Broccoli is also a good plant to have in your garden because once you harvest the main head of broccoli, it will continue producing smaller side shoots that you can enjoy in your garden for months to come.', 'April, May, June', 'Fertile soil', 'Sun', '3l per week', '45 cm', '2 cm', 'October', 'vegetable', 'The leaves of broccoli plants are edible. You can use them as you would kale or collards leaves.'),
(8, 'Daffodil', 'daffodils.jpg', 'daffodil.png', 'Adding Daffodil bulb to your garden from September to November can bring a nice burst of colour to your garden by spring time. Daffodils can be planted in between shrubs or on their own in the garden. Remember, daffodils will bloom best when given adequate exposure to early spring sunshine! When planting daffodils ensure you plant them in groups of ten or more. They look great in a formal garden with shapes like square or circles.', 'September, October', 'Loamy', 'Sun', '16.6 ml per week', '15 cm', '10 cm', 'April', 'Flower', 'Some cultures believe that daffodils represent hope.  maybe that’s why they are regarded as the official 10th wedding anniversary flower.'),
(9, 'Cucumber', 'cucumber.jpg', 'cucumber.png', 'Cucumber is an annual plant, it has a green rind, crisp white flesh and very delicious when you grow them yourself. They are very easy to grow because they require little attention. Most varieties of cucumber will grow in any space because it is a climbing plant. Cucumbers are heavy feeders. This means they require plenty of water to grow. If you care for your plant properly a single plant can produce 40 cucumbers. Cucumbers can be successfully grown in pots, growing bags or directly in the ground in your garden.', 'March, April, May', 'Loamy', 'Sun', '2 litre per week', '90 cm', '30 cm', 'July', 'vegetables', 'Cucumbers are used to make pickles; dill pickles, sweet pickles, or spicy pickles. Learn how to plant this wonderful plant as an addition to your garden.'),
(10, 'Lettuce', 'lettuce.jpg', 'lettuce_2.png', 'Lettuce is an ideal garden vegetable, it can be grown in small areas, it grows easily, and it loves Irish weather because it requires relatively low temperatures to prevent it from flowering quickly. Lettuce is usually grown as a leaf vegetable but sometimes for its stem and seeds. It is mostly used for salad. Although it is seen in other types of food such as soup, sandwiches and wraps. Lettuce can also be eaten raw. Lettuce is generally grown as an annual plant. Lettuce is also rich in vitamin K and vitamin B and has a moderate source of iron.', 'March', 'Loamy', 'Sun', '50 ml weekly', '30 - 40 cm', '2cm', 'August', 'vegetables', 'Do not store your lettuce near apples, bananas, or any other ethylene-emitting fruits. Ethylene causes lettuce to ripen very fast and start to decay quickly!'),
(11, 'Rose', 'roses_3.jpg', 'rose.png', 'The name rose comes originally from a Latin word Rosa, a rose grows in different colours, but mostly grows in the red colour, the other colours it can grow in is yellow and purple.  Rose plants range in size from compact, miniature roses, to climbers that can reach seven metres in height. Rose is a hardy plant that can easily be planted in a variety of positions and locations in the garden. You must choose the variety of rose that you want to plant and follow the instructions on the packet for planting. You can plant either bare root or container grown rose plants in spring and be enjoying blooming roses by summer.', 'March, April', 'Sandy', 'Sun', '10 litres', '60 - 90 cm', '60 cm', 'July, August', 'flower', 'Red roses are in such high demand on February 14th that it could be tough to get your hands on them. So why not have your own rose.'),
(12, 'Pear', 'pears.jpg', 'pear.png', 'Pears come in two varieties, dessert pear for eating and cooker pear for cooking. You can grow pear in a container or grow them in your garden. Once a pear plant is established it requires minimal care throughout the year. A full-grown pear can grow up to 40 feet. So, depending on the size of your garden you might consider a dwarf or semi dwarf variety when planning to plant pear in your garden. Although it is possible to grow pear trees from seed, you will get faster crop results by buying a young pear tree to plant.', 'November - March', 'Loamy', 'Sun', '2 litres', '120 cm', '15 cm', 'August', 'Fruit', 'The wood from a pear tree can be used in making furniture and kitchen utensils, as well as smoking meats. Enjoy the multipurpose use of this plant in your garden.'),
(13, 'Tulip', 'tulips_2.jpg', 'tulip.png', 'Tulip flowers are usually cup-shaped with three sepals. Tulip flowers may be single or double, and different in shape from cups, bowls and goblets to more complex form. They are among the most popular bulbs because of their bright flower colour and shapes. When choosing a tulip bulb for planting make sure they are fat and firm, do not plant any bulbs that are soft mouldy or whose papery cover is missing. Avoid planting your tulip too soon as that will send their leaves up right away. Keep the tulip bulb in a paper bag while waiting to plant them.', 'October,  November', 'Sandy', 'Sun', '50 ml per week', '10 cm', '15 cm', 'March, April, May', 'Flower', 'Tulips will only bloom naturally for 3-7 days in spring. If you trim the stems of your freshly cut tulips, they will continue to grow in your vase for at least another inch.'),
(14, 'Tomato', 'tomatos.jpg', 'tomato.png', 'Tomatoes are colourful, aromatic and delicious vegetables. It is an essential crop that you can plant in your garden because of its high yield even in a small space. Tomatoes come in different shapes and sizes and colours. Cherry tomatoes range from pea to cherry-sized and are sweet to taste which make them ideal for children. There are many varieties of tomatoes, so it is important you know which one to plant.', 'March, April', 'Sandy', 'Sun', '25 ml per week', '50 cm', '30 cm', 'July, August, September, October, November', 'vegetable', 'Do you know that one gardener successfully grew 1,368Ibs of tomatoes from just 4 plants click below to learn how.'),
(15, 'Leeks', 'leek_2.jpg', 'leeks.png', ' Leeks can be steamed or boiled, and it is a winter vegetable. Leeks are easy to grow and cared for but need looking after well.  The leafy top of the leek is good for flavouring soups and stews. Leeks are nutritious and rich in vitamin A. They can grow in any varied soil conditions, so long as it is not waterlogged. You can sow your leek in seed beds for transplanting the following summer, or you can sow them in their permanent positions in your garden.', 'April, May', 'Loamy', 'Sun', '16 ml per week', '15 cm', '1 cm', 'October, November', 'vegetable', 'Like their cousins the onions, leeks have some sulphur compounds that scientists believe reduce your risk of some health problems.'),
(16, 'Cauliflower', 'cauliflower.jpg', 'cauliflower.png', 'Cauliflower can be grown all year round but are quite a challenge for new gardeners because it needs consistently cool temperature and takes a lot of garden spaces. It is a cool season crop which can be grown in spring and fall because it does not tolerate heat or cold. If you follow our how to plant instructions and grow your own cauliflowers, you can enjoy attractive and tasty varieties like yellow, green or purple ones.', 'March, April', 'Loamy', 'Sun', '32 ml per week', '60 cm', '2 cm', 'July', 'vegetable', 'Cauliflower heads can be roasted, grilled, boiled, fried, steamed, pickled, or eaten raw. When cooking, the outer leaves and thick stalks are typically removed, leaving only the head.'),
(17, 'Chrysanthemum', 'chrysanthemum_2.jpg', 'chrysanthemum.png', '', '', '', '', '', '', '', '', 'Flower', 'Tulips will only bloom naturally for 3-7 days in spring. If you trim the stems of your freshly cut tulips, they will continue to grow in your vase for at least another inch.'),
(18, 'Basil', 'basil.jpg', 'basilIcon.png', '', '', '', '', '', '', '', '', 'vegetable', 'Basil is one of the top 10 of the most economically important global vegetable crops, the simple reason why you must plant your own carrots.'),
(19, 'Cherry', 'cherrys.jpg', 'cherrysIcon.png', '', '', '', '', '', '', '', '', 'fruit', 'Even in a small space you can plant a hedge of dwarf apple trees and yield a successful crop in your small garden.'),
(20, 'Parsley', 'cucumber.jpg', 'cucumber.png', '', '', '', '', '', '', '', '', '', 'Parsley are used to make pickles; dill pickles, sweet pickles, or spicy pickles. Learn how to plant this wonderful plant as an addition to your garden.'),
(21, 'Peas', 'peas_2.jpg', 'peasIcon.png', '\r\n', '', '', '', '', '', '', 'July', 'vegetable', 'Peas heads can be roasted, grilled, boiled, fried, steamed, pickled, or eaten raw. When cooking, the outer leaves and thick stalks are typically removed, leaving only the head.'),
(22, 'Plums', 'plums.jpg', 'plumsIcon.png', '', '', '', '', '', '', '', '', 'fruit', 'Even in a small space you can plant a hedge of dwarf apple trees and yield a successful crop in your small garden.'),
(23, 'Radish', 'radish_2.jpg', 'radishIcon.png', '', '', '', '', '', '', '', '', 'vegetable', 'Basil is one of the top 10 of the most economically important global vegetable crops, the simple reason why you must plant your own carrots.'),
(24, 'Strawberry', 'strawberry.jpg', 'strawberryIcons.png', '', '', '', '', '', '', '', '', 'Fruit', 'The wood from a pear tree can be used in making furniture and kitchen utensils, as well as smoking meats. Enjoy the multipurpose use of this plant in your garden.'),
(25, 'Raspberries', 'raspberries.jpg', 'raspberriessIcon.png', '', '', '', '', '', '', '', '', 'fruit', 'Even in a small space you can plant a hedge of dwarf apple trees and yield a successful crop in your small garden.');

-- --------------------------------------------------------

--
-- Table structure for table `plantinginfo`
--

CREATE TABLE `plantinginfo` (
  `plantInfoID` int(3) NOT NULL,
  `infoImage` varchar(50) NOT NULL,
  `step1` varchar(400) NOT NULL,
  `step2` varchar(400) NOT NULL,
  `step3` varchar(400) NOT NULL,
  `step4` varchar(400) NOT NULL,
  `step5` varchar(400) DEFAULT NULL,
  `aftercare` varchar(600) DEFAULT NULL,
  `problems` varchar(600) DEFAULT NULL,
  `plantID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plantinginfo`
--

INSERT INTO `plantinginfo` (`plantInfoID`, `infoImage`, `step1`, `step2`, `step3`, `step4`, `step5`, `aftercare`, `problems`, `plantID`) VALUES
(1, '', ' Before sowing till the soil and make sure the ground is as level as much as possible in order to obtain a good stand, break up any large lump of soil. Don’t add fresh manure or compost when sowing as it is not good for sowing carrot. Apply manure two week before sowing.', ' plant the seed directly in the ground and do not transplant carrot but plant the seed in a double or triple row. Cover back the bed with soil and keep the seedbed moist to encourage germination.', 'Sow the seeds around 2 inches apart to reduce overcrowding and to make it very easy to thin out seedlings later when the plant grows. You can sow a little thicker that what is needed for final crop. This is to allow for losses due to poor germination or other growing issues that may occur.', 'Remember to feed your plant during its growing period with fertilizer to increase soil nutrients.\r\n', ' ', 'Take care of the carrot bed to be sure the soil is loose and completely free of stone and weeds. Weed the plant regularly to retain precious nutrients in the soil for the plant, but care should be taken not to uproot the young carrots while weeding.', 'Forked roots are a common problem when soil is rocky or not light or when seeds are sown closely together and not thin out when the plants grow.', 1),
(2, '', 'Dig in plenty of compost to prepare the soil for planting, ensure the soil has not been recently used for planting garlic or onions. Garlic prefer light nutrient-rich soil and does not like water logging.', 'Split the bulb into separate cloves and plant each clove just below the surface of the soil, ensure the pointed end is facing up. Space the plant to allow the bulb to swell so don’t plant bulbs closely together.', 'Make sure the compost remains moist, especially during dry spells.', 'Cover the ground with net after planting or with 2 inches of soil to prevent bird from pulling freshly-planted garlic out of the ground.', '', 'Water every 3 to 5 days when the plant starts bulbing and keep the beds well weeded, garlic does not do well with weeds because it needs all the nutrients in the soil. If you see yellow leaves fertilizer the soil.', 'Garlic does not seem to have a lot of problems with pest because it is a natural pest repellent\r\nWhite rot on the other hand may attack garlic in cool weather. Little can be done to control or prevent white rot except croup rotation and clearing the area after harvesting in preparation for the next season planting.', 3),
(3, '', 'Prepare the soil with plenty of manure or compost when planting in the garden. Plant seed in a sunny well drained spot in your garden and pepper need 6-8 hours of sunlight a day.', 'Mix about 2 tablespoons of well-balanced fertilizer in the planting holes and water after planting, grow hot pepper separately to prevent cross pollination with sweet bell pepper.', 'Support each plant with a stake once it starts to grow pepper to help maintain the weight of the peppers because most pepper plant stems are brittle and can easily break without support.', 'Pinch out the growing point at the top when the plant reach 20cm to helps the plant to produce more branches. This makes the plant healthy with more flowers and fruits.', '', 'Water little and constantly to keep the soil evenly moist and to avoid water logging and mulch to soil to help retain moisture. Once the first pepper fruit has set fed the plant with liquid fertilizer to maintain the nutrients in the soil.', 'Mostly peppers are problem free, but peppers can be affected by white fly, red spider mite and grey mould which could destroy the stem and the fruit in the cool weather, but prompt removal of the affected plants can limit the damage. using of pesticides can also eliminate common pests like cutworm and hornworms that can destroy pepper leaves.', 4),
(4, '', 'Prepare your garden with a good bucket or two of well-rotted garden compost raked into the surface layer. Avoid manure because this might cause thick neck which would not dry properly and will rot from the inside out.', 'Put the sets about 1 cm into the loose soil, leave about half of the onion showing above the soil if you are transplanting. Or sow 4 seeds per hole if you are planting using seeds.', 'As your onions grow, the bulbs get enlarge and you have to move the soil away from the tops of the bulbs. Expose the plant to the air and leave the lowest part of the bulb in contact with the earth helps the papery skin firm up and prevent onion bulb from rot.', '', '', 'If the soil is dry, water the soil immediately after planting or transplanting, make sure to keep the soil moist until the seedlings come up or until plants take hold make sure to cut back on watering when the top start dying back to prevent the bulbs from rotting.', 'The common disease of onion is onion white rot, this makes the leaves to turn yellow and wilt and the bulb get white mould in them. There is no remedy for this disease, the only thing to do is to remove the affected plant and burn them and refrain from planting onion in the same spot.', 5),
(5, '', 'Prepare your plot by digging the areas that you want to plant on to loosen the soil, adding nutrients matter such as well rotted manure or compost before planting.', 'Ensure to cover plant when they are younger if there is any risk of frost. You need to cover the stem with soil, use the hoe to bring loose soil from around the plant up against the stem. When the stem are 20cm high up draw soil up and leave just 10 of leaves above the surface.', 'Repeat the above process once or twice during the summer, if you see potatoes popping through the soil. The tuber will go green if exposed to the light and they could be poisonous and inedible.', ' Check your plant around June to see how they are growing. The presence of flowers on the plant means the potatoes are ready.', '', 'Potatoes seem to be one of the easiest plants to care for, they can sometimes produce crops even if uncared for. But if you want a good crop you must care for your potato plants. Watering, weeding and feeding are very important to potato plants.', 'The real problem for potatoes is frost. They could be damaged if exposed to too much frost especially for earlier sowings. Also, when planting choose disease resistant seed potatoes or spray crop prior to infection with spray to prevent damage by worms and slugs.', 6),
(6, '', 'Choose an area in the garden with plenty of sunlight. Test soil and add different nutrients/fertilizer if necessary before you plant broccoli.', 'Sow seeds directly on the ground, if seeds are sown indoors transplant outside when plants are 10-15cm high and leave 18 inches between plants. Cover seeds with a fine soil and keep moist during germination.', 'Protect seedlings when they emerge from the ground from slugs damage by using barriers to cover the plant if necessary.', 'Apply liquid fertilizer every week and water well, also keep the base of the plant weed free because if the plant you will get low yield.', '', 'Fertilize broccoli three weeks after transplanting seedlings into the garden or when the broccoli plant seeds grow to around one inch. Water carefully, do not water broccoli heads to prevent rot. To enable more heads of broccoli to grow, maintain an active feeding and watering schedule.', 'Small holes in the leaves might mean that there are green caterpillars present on the plant. Handpick the problem area if the problem is small or use pesticide if it affected a large area of your crop. Also add fertilizer if you noticed the bottom leaves of your plants are turning yellow and this continues towards the top of the plant.', 7),
(7, '', 'Remove apple seeds from ripe apples, dry seeds on a paper towel, allow the seeds to dry for four weeks. If you are planting in a wet area, make a mound of soil above the surrounding garden and plant the three in the centre of the mound.', ' Prepare your garden with a good bucket or two of well-rotted garden compost raked into the surface layer to loosen the soil and allow water to drain.', 'Pick an area of the garden that has direct sunlight and plant the seeds or if transplanting the sprouting plants. Place soil between and around the roots to prevent air pockets which prevent root growth. Cover the seeds lightly with a thin layer of soil to prevent the ground from crusting in cold weather.', 'When you cover the roots with soil, ensure you tamp it down, so that the roots are completely in the soil. This is to make sure the plant is going to get all the nutrients from the soil.', '', 'Do not plant in waterlogged or frozen soil, add fertilizer but do not add fertilizer at planting time because you can burn the roots of your plant. Fertilize only when the plant has grown, although you might not need to fertilize the plant if your soil has proper nutrients. Do not over fertilize your plant as this can cause too much woody growth which will be disease prone.', 'Curly and distorted leaves and black patches on apple leaves are caused by Aphids which are little insects that attacked the underside of new tender leaves. Aphids need to be controlled in order to ensure a good crop of apples.', 2),
(8, '', 'Prepare your plot by digging the areas that you want to plant on, add nutrients matter such as well rotted manure or compost before planting.', 'Dig a planting hole and give the ground a quick rake to loosen the soil, this will help the roots to grow easily.', 'Place the bulb firmly in an upright position in the bottom of the hole, make sure you give it a gentle twist to help steady the plant position by putting the pointy end upwards.', 'Place the soil back into the hole to cover the plant and pat it lightly down. If there is a sign of rain you do not need to water your newly planted daffodils but if not water the plant thoroughly to assist root germination.', '', 'Daffodils are going to bloom in the spring, allow the flower to grow until they die off. Do not cut down earlier because they need time after blooming to store energy in the bulb for next year\'\'s bloom. To remove the dead plants, ensure you either snip them off the base or twist the leaves while pulling lightly. If after flowering your bulbs are not growing as desired, apply fertilizer.', 'Animals and rodents do not like the taste of daffodils, so flowers are safe from them. Daffodils are poisonous to pets ensure animals do not eat them.The most common problem with daffodils is bulb fly, bulb scale mite and other fungal infections. They feed on the bulbs and cause them to rot. You can prevent the damage from spreading by immediately removing the affected bulbs or wiping infested leaves or washing daffodils with water.', 8),
(9, '', 'Before planting cucumber, improve clay soil by adding organic matter, also improve dense heavy soil by adding compost or rotted manure. Rake through the surface layer to loosen the soil and allow water to drain.', 'Plant seeds 2 to 3 feet apart in a row, depending on the variety you are planting. You can plant cucumbers in mound or hill that are spaced 1 to 2 feet apart with 2 to 3 seeds planted in each mound.', 'After planting mulch area with straw, chopped leaves, or another organic matter to help keep pest away, and to avoid disease. You can also cover the row with black plastic bag to help warm the since cucumber needs heat to germinate.', 'If you have pests, you can cover freshly planted cucumber seeds with netting or a berry basket to keep pests from digging out the seeds.', '', 'The main care requirement of cucumber is adequate water. They need constant water. Inconsistent water leads to bitter-tasting fruit. When the seedlings emerge, begin water frequently and increase to gallon per week after fruit forms. To improve cucumber growth, use black or brown mulch. This is because warm moist soil is necessary for high cucumber yield. Dark plastic mulch on the bed will also speed up growth and increase yield by conserving soil moisture and maintaining a high soil temperature.', 'One problem that can occur with planting cucumber is the problem of vine crop disease which include bacterial wilt and scab disease. To prevent this, it is great to select only disease resistance types when planning to plant cucumbers. Ensure you keep the area around the cucumber bed clear of plant debris so as to prevent fungal and bacterial disease from the plants. Be careful of over watering so as to prevent foot and root crop.', 9),
(10, '', 'Dig over the soil to remove any remnant of perennial weed roots. Add well-rotted compost before you start planting your lettuce.', 'You can also add general garden fertilizer into the soil and rake to provide an even bed on which to plant on.', 'Sow lettuce seeds a quarter of an inch deep and1 inch apart in row or square. Tap them down and water. Mulch with a layer of compost or clean straw to help the soil retain moisture.', 'To maximize your lettuce yield, plant seeds in a raised bed, because the raised bed warms up faster than the surrounding ground.', '', 'The main care requirement of cucumber is adequate water. They need constant water. Inconsistent water leads to bitter-tasting fruit. When the seedlings emerge, begin water frequently and increase to gallon per week after fruit forms.', 'When the soil nutrient is not enough, this can cause a variety of problems for lettuce, these could be malformed plants or a lack of head growth. Ensure you add adequate nutrients to your soil before planting and add more nutrients to the soil when necessary.  Also, many insects are attracted to lettuce including cutworms, which attack seeds at the soil level, nematodes and wireworms which cause yellow stunted plants. Aphids and tarnished plant bugs can also attack the plant and cause yellow distorted leaves.  Planting pest resistant varieties of lettuce will help to protect against pests.', 10),
(11, '', 'If you are planting a bare root shrub, place your bare root shrubs in a bucket of water for 30 minutes prior to planting. This is to ensure the root is well hydrated before planting.', 'Dig the soil over thoroughly and remove any weeds or stones. Mix a spadeful of well-rotted farmyard manure with the soil at the bottom of the hole. This will add vital nutrients to the soil and help the rose grow more effectively.', 'Dig hole approximately 40cm wide and 60 cm deep, that is wide enough and deep enough to hold the rose’s root when it is spreading out.  Dig your hole against a wall if you are planting a climbing rose.', 'Position your rose in the hole, fill in around the roots of the rose, lightly firm the soil around with your foot to ensure that the rose is secure and there are no air pockets in the soil. Water the rose after planting.', '', 'After planting, use 7.6 to 15.2 cm of mulch to control the moisture, temperature and to stop weeds from popping up around the plant. The mulch will also help to lock in the nutrients of your rose in order to grow healthy. Make sure you prune your roses to keep them from getting crowded and will make them grow healthy. You will need a prune shear and know what part of the plant you want to prune.', 'A common problem of roses is replant disorder, this refers to the problem of establishing plants in soil where the same species was grown previously. Your new rose plant may struggle to grow and may even die. It is usually ideal to swap soil with fresh soil from another part of the garden also applying fertilizer that is high in nitrogen might boost plant growth.', 11),
(12, '', 'Prepare your ground well in advance with mulch and nutrients. Dig a hole wide and deep, if the sides or base of the planting holes are hard, break the soil up with a fork before planting.', 'Place the plant in the planting hole and gently spread the roots and refill the hole with amended soil.', 'Ensure you stake you spread the roots away from the trunk without bending them. Stake immediately using 3 feet tree stake and tree tie.', 'Mulch the surface of the ground lightly to keep weeds away, semi rotted grass clipping will do. Do remember to water your plant thoroughly.', '', 'Ensure to water the young plant well during dry spells to help establish the roots. You can apply a small amount of fertilizer early in the year. If your soil is fertile, use less fertilizer, but if the leaves are pale or yellowish during summer, use a little more fertilizer next year. Prune your tree annually to keep the tree healthy, don’t forget to thin fruit as well, leaving about 6 inches between each cluster of fruit per branch.', 'Pears have less pest and disease issues than other fruits. Brown rot and rust are problems of pears, it is a fungal disease that causes a brown spread rot in fruit. It is usually worse in the wet summer. Removing all rotten fruits immediately will prevent the spread of the rot.', 12),
(13, '', 'Prepare the garden bed by using a garden fork to loosen the soil to a depth of 12 to 15 inches. You must mix in a 2-4 inch layer of compost to the soil.', '  Plant bulb at least 8 inches deep into the hole when you measure from the base of the bulb.  Create a raised bed because the bigger the bulb the deeper the holes it needs to grow.', 'Ensure you dig deeper to loosen the soil and allow for water drainage. Set the bulbs in the hole with the pointed end up to avoid bulb sprouting downward.', 'Cover your bulb with soil and press soil firmly with your hand be careful not to tilt the bulbs in another direction, water bulb immediately after planting. Do not over water though to avoid wet feet. Mulch the tulip bed with straw to keep the soil cool.', '', 'In the spring feed tulip, the same bulb food or bone meal which was used at planting time. Water thoroughly but if it rains weekly do not water because too much water leads to fungus and disease and can rot bulb. Ensure to allow the leaves to remain on the plant for about 6 weeks after flowering. This is because tulips need their foliage to gather energy for next year\'s blooms. You can prune off the foliage after it turns yellow and die back.', 'One problem of tulips is failure to flower, small bulbs or bulbs that are planted in poor soil may not flower. If that happened, bulbs should be removed while the bed is cleared of other plants and the soil enriched with fertilizer. Only the large bulbs should be replanted.', 13),
(14, '', 'Make sure your soil has plenty of well-rotted garden compost before planting your tomatoes. Dig over the soil to remove any remnant of perennial weed roots.', 'If you are using your own seed, plant them first in a sunny room, and once the seedlings grow their second set of leaves, transplant them to a plastic cup to encourage strong roots.', 'You can transfer the plant into your garden when the temperature outside stays consistently warm. Dig a deeper hole than you think you will need, setting the plant into the hole so that the lowest set of leaves sit at soil level.', 'Cover the bed with a layer of mulch, straw or grass clipping, this will prevent any weeds from popping up.', '', 'Water your tomato evenly, little and often will help prevent fruit from splitting. You can plant your tomatoes with basil for a nice combination. It is said to improve the flavour of the tomatoes as they grow. Support your plants by tying the stem to a stake. It is important that you add compost when the first fruit is ripening to encourage new growth. You can also add fertilizer to your plant but don’t overfeed as too much nitrogen will make your plant very lush but not very fruitful.', 'A common problem with tomato plants is fruit splitting and blossom end rot which affects the base of the tomatoes fruit and leaves. This is caused by irregular watering. You could prevent this problem if you water your plants regularly.  \r\nTomatoes plants can also be affected by many pests which includes: Aphids (blackfly and greenfly) and mosaic virus. You can plant Marigold as it attracts beneficial insects that love to eat blackfly. Also spraying the plant with water can work because water knocks the blackfly off the plant.', 14),
(15, '', ' If you are planting your leek directly into your garden, prepare your soil with a generous amount of organic fertilizer or well rotted garden compost at least 8 inches deep before planting.', 'It is advisable to grow your leeks in modules before transporting the plant to their final growing position.  You can sow one or two seeds per module.', 'Plant the seed in thinly in the hole that you dug as germination is usually very good, cover the seed with fine sifted soil.', 'Firm the soil lightly and gently water your seeds. They usually take about two weeks to germinate.', '', 'Ensure you water the young plant well especially in summer until they are well established. To keep down the weeds so that they do not affect your plant, hoe between rows regularly. Feed your leek plant regularly as they are heavy feeders, so it is best to grow them in fertile soil that has been enriched with plenty of farm manure or compost. This will increase the thickness of the leek stem. Blanching your leeks plants will increase the part of the plant that is edible and improve flavour of the vegetable. This involves moving the soil away from the stems of the plants to expose the stems.', 'Leek rust and Downy mildew can be problems for leeks because it is an airborne fungus that affected the young plant. The seedling emerged and appeared healthy; then it\'s later wilt and die off for no reason, or grey patches appeared on the underside of the plant. Keep seedlings moist but not over watered, avoid too much fertilizer and rotate crops with plants in different families can help prevent these problems.', 15),
(16, '', 'Prepare your ground a few weeks before planting cauliflower need to be planted in a firm, fertile, free draining ground.  So, ensure you dig and add manure to your soil in advance.', 'Water the ground well before sowing, create a hole with a shovel and pop the seedling in and then firm very well. The more space you give your plant the healthier your plants will be.', 'Water consistently during germination and growth to develop a healthy root. This is important because the root and stem will eventually have to support a very heavy and big head.', 'If you are transplanting seedlings, ensure you do so 2 to 4 weeks before the last spring frost date. Give the plant enough distance between rows and planting distance.', '', 'Apply fertilizer to developing seedlings when leaves appear, usually with a starter solution weekly. Water your plant regularly even with normal rainfall, cauliflower requires additional watering.  Do not let the compost plug dry out or it will form a crust on top of the plant, and it won’t absorb the moisture the next time you water the plant. Also keep plants free of weeds.', 'The most common problem affecting cauliflower is brown head. If you notice a brown head, this indicates a boron deficiency in the soil, add 1 teaspoon of borax in gallon of water and drench the plant. Do not let the boron touch other plants in your garden. Repeat this process every 2 weeks until the brown head disappears.', 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `userPic` varchar(500) NOT NULL,
  `userpass` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `firstName`, `lastName`, `email`, `userPic`, `userpass`) VALUES
(1, 'Kayleigh.Hoey', 'Kayleigh', 'Hoey', 'D00194469@student.dkit.ie', '', '$2y$10$6EvexDn58TCkRr3D1CtNH.9ht8Nc0f2vf3DdWRypsGYmwDpaYYe5i'),
(2, 'D00194469Kay', 'Kayleigh', 'Hoey', 'D00194469@student.dkit.ie', '', '$2y$10$eNqR7ODJj/TrwuSOA5hPEuzgc4KkWJyysUIPOjmo6.3jD5ci38A42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garden`
--
ALTER TABLE `garden`
  ADD PRIMARY KEY (`gardenID`),
  ADD KEY `fk_USERS` (`userID`);

--
-- Indexes for table `gardenplants`
--
ALTER TABLE `gardenplants`
  ADD PRIMARY KEY (`gardenID`,`plantID`),
  ADD KEY `fk_GARDENPLANTS2` (`plantID`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plantID`);

--
-- Indexes for table `plantinginfo`
--
ALTER TABLE `plantinginfo`
  ADD PRIMARY KEY (`plantInfoID`),
  ADD KEY `fk_PLANT` (`plantID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plantID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `plantinginfo`
--
ALTER TABLE `plantinginfo`
  MODIFY `plantInfoID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `garden`
--
ALTER TABLE `garden`
  ADD CONSTRAINT `fk_USERS` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gardenplants`
--
ALTER TABLE `gardenplants`
  ADD CONSTRAINT `fk_GARDENPLANTS1` FOREIGN KEY (`gardenID`) REFERENCES `garden` (`gardenID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_GARDENPLANTS2` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plantinginfo`
--
ALTER TABLE `plantinginfo`
  ADD CONSTRAINT `fk_PLANT` FOREIGN KEY (`plantID`) REFERENCES `plant` (`plantID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
