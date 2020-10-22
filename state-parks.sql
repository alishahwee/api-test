--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.activities (
    parks_id integer NOT NULL,
    activity character varying
);


ALTER TABLE public.activities OWNER TO alishahwee;

--
-- Name: images; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.images (
    parks_id integer NOT NULL,
    url character varying
);


ALTER TABLE public.images OWNER TO alishahwee;

--
-- Name: parks; Type: TABLE; Schema: public; Owner: alishahwee
--

CREATE TABLE public.parks (
    id integer NOT NULL,
    name character varying NOT NULL,
    address character varying NOT NULL,
    url character varying NOT NULL
);


ALTER TABLE public.parks OWNER TO alishahwee;

--
-- Name: parks_id_seq; Type: SEQUENCE; Schema: public; Owner: alishahwee
--

CREATE SEQUENCE public.parks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parks_id_seq OWNER TO alishahwee;

--
-- Name: parks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alishahwee
--

ALTER SEQUENCE public.parks_id_seq OWNED BY public.parks.id;


--
-- Name: parks id; Type: DEFAULT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.parks ALTER COLUMN id SET DEFAULT nextval('public.parks_id_seq'::regclass);


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.activities (parks_id, activity) FROM stdin;
1	Backpack Camping
1	Fishing 
1	Swimming
1	Prairie Landscape
1	Hiking
1	Cross-Country Skiing
2	Kettle River
2	Canoeing
2	Historic Sandstone Quarry
2	Wolf Creek Falls
2	Hiking
2	Kayaking
3	Camping
3	Fishing
3	Great Hiking Trails
3	Wilderness Atmosphere
3	Wildlife
3	23 Miles of Lakeshore
4	Camping
4	Trout Fishing
4	Hiking
4	Bird Watching
4	Spring Woodland Flowers
4	The "Big Spring"
5	Fishing
5	Camping
5	Birdwatching
5	Bog Boardwalk 
5	Swimming
5	Picnicking
6	Lakeside Campsites
6	Fishing
6	Bird Watching
6	Native Prairie/Oak Savanna in Scientific and Natural Area
6	Wildflowers Spring/Summer
7	Camping
7	Hiking
7	Rock Climbing
7	Wildlife
7	Bison Herd
7	Prairie Wildflowers / Grasses
8	Swimming Beach 
8	Great Picnicking
8	Camping
8	Fishing
8	Native Prairie Landscape
9	Camping
9	Fishing
9	Fall Colors
9	Dakota Overlook
9	Wildflowers
9	Native and Restored Prairies
10	Camping
10	Fishing/Trout Stream
10	Spring Wildflowers
10	Hiking
10	White Pine Stands
10	Bluebells in May
11	Hiking
11	Camping
11	Skiing
11	Waterfalls
11	Fishing
11	Scenic areas along river and lake
12	Camping
12	Historic Site
12	Picnicking
12	Spring Wildflowers
12	Mississippi River
12	Great Family Reunion Park
13	Camping
13	Fishing
13	Scenic Hiking Trails
13	Historic Sites
13	Canoeing/Mississippi River
13	Great Wildlife Observation Opportunities
14	Camping
14	Trout Fishing
14	Canoeing
14	Mountain Biking
14	Scuba Diving
14	Fat Biking
15	Camping
15	Fishing
15	Wheelchair Accessible Fishing Piers
15	Sandy Beach
15	Home of Several Albino Deer
16	Shaded Campsites
16	Sand-bottom Swimming Pool
16	Enclosed Picnic Shelter
16	Scenic Overlooks
16	Hiking/Cross-Country Skiing
16	Modern Group Center
17	Tours of Mystery Cave
17	Historic Forestville Tours
17	Trout Streams
17	Camping
17	Great Hiking/Horseback Trails
17	Spring Flowers
18	Fishing
18	Hiking
18	Dakota Memorial
18	Interpretive Exhibits
18	Bike Trails/Connections
18	Cross-Country Skiing
19	Great Fishing
19	Hiking
19	Quiet
19	Peaceful Park
19	Scenic Hiking Trails
20	Camping
20	Wonderful Fall Colors 
20	Excellent Birding Opportunities
20	Wildflowers in Spring Through Fall
20	Winter Sliding Hill
20	Great Hiking/Ski Trails
21	Picnicking
21	Walleye Fishing
22	Camping
22	Hiking
22	Scenic views
22	Waterfalls
22	Wildlife
23	Camping
23	Fishing
24	Cart-in Tent Camping
24	Hiking and Biking
24	Wildlife Observation
24	Heritage Fishing/Large Panfish
24	Canoeing on Chain of Lakes
24	Sandy Swimming Beach
25	Scenic Waterfalls/Lake Superior Shoreline
25	Visitor Center/Nature Store
25	Historic CCC Log & Stone Structures
25	Year-Round Naturalist
25	Multi-Use/Accessible Trails
25	Gateway Plaza
26	Minnesota's Highest Waterfall
26	Hiking
26	Scenic Views
26	Picnicking
26	Spring/Summer Wildflowers
27	Scenic Blufftop Views of Mississippi River Valley
27	Fall Colors
27	Goat Prairies
27	 Prairie Plants/Flowers
27	Camping/Hiking/Picnicking
27	Birdwatching
28	Scenic Views: Grefthen Bay Overlook
28	Hayes Dam Area
28	New Bog Boardwalk
28	History Trail
28	Great Wildlife Observation
28	Timberwolves
29	Tours of Mine/Facilities
29	Historic Site
29	Clubhouse Museum
29	Scenic Overlook
29	Picnicking
29	Fossil Hunt
30	Scenic River Views
30	Canoeing
30	Camping
30	Fishing
30	Rock Climbing
30	Pothole Viewing
31	Camping
31	Fishing
31	Hiking
31	Historic Sites
31	Unique Ecosystem
31	 Old Growth
32	Camping
32	Hiking
32	Swinging Bridge
32	Pioneer Cemetery
32	Thomson Dam
32	Oldenburg Point
33	Scenic Views
34	Scenic Waterfalls
34	Trout Fishing
34	Camping
34	Hiking/Picnicking
34	Wildlife Observation
34	Superior Hiking Trail
35	Camping
35	Fishing
35	Bird Watching/Winter Eagle Sightings
35	Hunting
35	Canoeing
35	Cross-country Skiing
36	Largest Observation/Water Tower in MN State Park System
36	Historic WPA-Built Structures
36	Playground
36	Excellent Prairie & Aspen Parkland Habitat
36	Camping/Hiking 
36	Visitor Center
37	Camping
37	Fishing on Chain of Lakes
37	Birdwatching
37	Hiking Through Rolling Hills
37	Swimming/Boating
37	Water Recreation
38	Quiet Park
38	Seasonal Wildflowers
38	Peaceful Campgrounds
38	Canoeing on Lake Louise
38	Swimming Beach
38	Horse Trails Through Varied Habitat
39	Secluded Backpack Campsites
39	Endangered Blandings Turtle
39	Hiking/Spring Wildflowers/Fall Colors
39	Nesting Osprey and Eagles 
39	Remote Ski-in/Walk-in Camper Cabins
39	Cross-Country Skiing
40	Camping
40	Fishing
40	Bicycle Trail 
40	Shetek Monument and Koch Cabin
41	Swimming Beach
41	Camping
41	Hiking
41	Horse Trails
41	Picnicking
41	Snowshoeing/snowmobiling
42	Camping
42	Fishing
42	Hiking
42	Horseback Trails
43	Nature Programs
43	Camping
43	Swimming/Playground
43	100 Ft. Observation Tower
43	Historic Sites
43	Cross-Country Skiing
44	Camping
44	Fishing
44	Bison herd
45	Picnicking
45	Hiking
45	Horse Trails
45	Wildlife Observation
46	Camping
46	Fishing
47	Spring and Fall Migrations
47	Glacial Esker
47	Great Marsh/Birdwatching
47	Hiking
47	Canoeing
47	Camping
48	"Big Woods" Landscape
48	Spectacular Spring Wildflowers
48	Fabulous Fall Color
48	Visitor Center
48	Self-guided Interpretive Trail
48	Hidden Falls Waterfall
49	Camping
49	Wildlife
49	Historic Site
50	Full Hook-up Campsites
50	Boating/Fishing/Birding
50	Picnicking
50	Paved Multi-use Trails 
50	Nearby Dining and Shopping
50	Urban Setting
51	Spring and Fall Migration
51	Birdwatching
51	Great Variety of Songbirds/Waterfowl
51	Wildflowers
51	Canoeing
51	Nature Observation
52	Camping
52	Extensive Trail System
52	CCC Construction Buildings
52	Two Scenic Rivers Offer Excellent Canoeing
52	Birding/Wildlife Observation
52	Firetower
53	Maple and Basswood Forests
53	Hiking
53	Biking - Access to Sakatah State Trail
53	Camping
53	Wildlife
54	Hiking Trails
54	Swimming Beach
54	Fishing
54	Continental Divide
54	Snowmobiling
54	Historic Areas in Park
55	Camping
55	Hiking
55	Virgin Pines
55	Peaceful Setting
55	Fishing/Canoeing
55	Historic CCC Buildings
56	Interpretive Programs
56	Bird Watching
56	Camping
56	Fishing/Canoeing
56	Hiking
56	Cross-Country Skiing
57	Camping
57	Water Based Recreation / Swimming Beach
57	Fishing
57	Wildlife/Waterfowl Observation
57	Hiking
57	Horse riding trails
58	Tent Camping/Cart-in Sites
58	Historic Lighthouse / History Center Tours
58	Picnicking Along Lake Superior Lakeshore
58	Scenic Views of Lake Superior
58	Waterfalls
59	Rock Climbing
59	Fishing
59	Hiking
59	Camping
59	Many Scenic Areas Along River and Lake
59	Rocky Landscape
60	Waterfalls
60	Wildlife/Peregrine Falcons
60	Hiking
60	Camping
60	Rock Climbing
60	Cross-Country Skiing
61	Camping Including Tipi Sites
61	Historic Site
61	Horse Trails/Camp
61	Varied Landscape/Hiking Trails
61	Birdwatching
62	Rugged Hiking Trails to Scenic Bluffland
62	Noticeable Lack of Mosquitoes
62	Excellent Trout Fishing summer and winter
62	Year-round Interpretive Programs
62	Visitor Center
62	Spectacular Spring Wildflowers
63	Camping
63	Canoeing
63	Cross-Country Skiing
63	McElroy Visitor Center
63	Nevers Dam Overlook
63	Wildlife/Wildflowers
64	Camping/Fishing
64	Canoeing on the St. Croix
64	Cross-country Skiing
64	Naturalist Programs
64	Bird Watching
64	Oak Savanna Restoration
65	Camping
65	Fishing
65	Beach
65	Bird Watching
65	Winter Recreation
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.images (parks_id, url) FROM stdin;
1	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00100.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_001.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_002.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_003.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_004.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_005.jpg
1	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00100_006.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00103.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_001.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_002.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_003.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_004.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_005.jpg
2	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00103_006.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00109.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_1.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_2.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_3.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_4.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_5.jpg
3	https://images.dnr.state.mn.us/destinations/state_parks/1_large/bear_head_lake_6.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00112.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_001.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_002.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_003.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_004.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_005.jpg
4	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00112_006.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/banners/sra00308.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_001.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_002.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_003.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_004.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_005.jpg
5	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00308_006.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00115.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_001.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_002.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_003.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_004.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_005.jpg
6	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00115_006.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00121.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_001.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_002.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_003.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_004.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_005.jpg
7	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00121_006.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00124.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_001.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_002.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_003.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_004.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_005.jpg
8	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00124_006.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00127.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_001.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_002.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/camden_redwood_exterior.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_004.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_005.jpg
9	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00127_006.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00130.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_001.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_002.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_003.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_004.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_005.jpg
10	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00130_006.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00133.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_001.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_002.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_003.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_004.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_005.jpg
11	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00133_006.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00136.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_001.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_002.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_003.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_004.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_005.jpg
12	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00136_006.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00139.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_001.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_002.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_003.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_004.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_005.jpg
13	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00139_006.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/banners/sra00302.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_001.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_002.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_003.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_004.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_005.jpg
14	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00302_006.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00142.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_012.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_010.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_011.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_001.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_003.jpg
15	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00142_006.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00145.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_001.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_002.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_003.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_004.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_005.jpg
16	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00145_006.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00148.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_001.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_002.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_003.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_004.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_005.jpg
17	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00148_006.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00154.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_008.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_001.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_007.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_005.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_002.jpg
18	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00154_003.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00157.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_1.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_2.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_3.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_4.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_5.jpg
19	https://images.dnr.state.mn.us/destinations/state_parks/1_large/franz_jevne_6.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00160.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_001.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_002.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_003.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_004.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_005.jpg
20	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00160_006.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/banners/sra00307.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_001.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_002.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_003.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_004.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_005.jpg
21	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00307_006.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00163.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_001.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_002.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_003.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_004.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_005.jpg
22	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00163_006.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00166.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_001.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_002.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_003.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_004.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_005.jpg
23	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00166_006.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00167.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_007.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_008.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_009.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_010.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_011.jpg
24	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00167_012.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00172.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_001.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_002.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_003.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_004.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_005.jpg
25	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00172_006.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00173.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_001.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_002.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_003.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_004.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_005.jpg
26	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00173_006.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00244.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_001.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_002.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_003.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_004.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_005.jpg
27	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00244_006.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00174.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_001.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_002.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_003.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_004.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_005.jpg
28	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00174_006.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00176.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_001.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_002.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_003.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_004.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_005.jpg
29	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00176_006.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00178.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_001.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_002.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_003.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_004.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_005.jpg
30	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00178_006.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00181.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_001a.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_010.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_009.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_003.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_004.jpg
31	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00181_005.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00187.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_001.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_002.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_003.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_004.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_005.jpg
32	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00187_006.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00177.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_001.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_002.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_003.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_004.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_005.jpg
33	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00177_006.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00193.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_001.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_002.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_003.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_004.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_005.jpg
34	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00193_006.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00197.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_001.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_002.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_003.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_004.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_005.jpg
35	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00197_006.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00208.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_001.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_002.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_003.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_004.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_005.jpg
36	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00208_006.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00211.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_pelicans.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_campercabin.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_marshmarigold.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_turtle.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_fawn.jpg
37	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00211_spring_fishing.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00214.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_001.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_002.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_003.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_004.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_005.jpg
38	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00214_006.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00217.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_001.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_002.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_003.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_004.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_005.jpg
39	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00217_006.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00220.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_001.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_002.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_003.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_004.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_005.jpg
40	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00220_006.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00226.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_002.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_003.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_004.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_005.jpg
41	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00226_006.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00229.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_007.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_001.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_002.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_003.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_004.jpg
42	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00229_005.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00232.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_001.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_002.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_003.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_004.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_005.jpg
43	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00232_006.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00235.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_007.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_001.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_002.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_003.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_004.jpg
44	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00235_005.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/banners/sra00304.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_001.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_002.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_003.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_004.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_005.jpg
45	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00304_006.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00238.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_001.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_002.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_003.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_004.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_005.jpg
46	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00238_006.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00175.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_001.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_002.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_003.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_004.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_005.jpg
47	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00175_006.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00241.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_001.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_002.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_003.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_004.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_005.jpg
48	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00241_006.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00247.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_001.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_002.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_003.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_004.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_005.jpg
49	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00247_006.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/banners/sra00309.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_001.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_002.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_003.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_004.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_005.jpg
50	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SRA00309_006.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00250.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_001.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_002.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_003.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_004.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_005.jpg
51	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00250_006.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00253.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_001.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_002.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_003.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_004.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_005.jpg
52	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00253_006.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00256.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_001.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_002.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_003.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_004.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_005.jpg
53	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00256_006.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00259.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_001.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_002.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_003.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_004.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_005.jpg
54	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00259_006.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00262.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_001.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_002.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_003.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_004.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_005.jpg
55	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00262_006.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00265.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_001.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_002.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_003.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_004.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_005.jpg
56	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00265_006.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00267.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_001.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_002.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_003.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_004.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_005.jpg
57	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00267_006.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00266.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_001.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_002.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_003.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_004.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_005.jpg
58	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00266_006.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00268.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_001.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_002.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_003.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_004.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_005.jpg
59	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00268_006.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00269.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_8.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_1.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_2.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_3.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_4.jpg
60	https://images.dnr.state.mn.us/destinations/state_parks/1_large/tettegouche_5.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00277.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_001.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_002.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_003.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_004.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_005.jpg
61	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00277_006.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00280.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_001.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_002.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_003.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_004.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_005.jpg
62	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00280_006.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00254.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_001.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_002.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_003.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_004.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_005.jpg
63	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00254_006.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00283.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_001.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_002.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_003.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_004.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_005.jpg
64	https://images.dnr.state.mn.us/destinations/state_parks/1_large/SPK00283_006.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/banners/spk00284.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_1.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_2.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_3.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_4.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_5.jpg
65	https://images.dnr.state.mn.us/destinations/state_parks/1_large/zippel_bay_6.jpg
\.


--
-- Data for Name: parks; Type: TABLE DATA; Schema: public; Owner: alishahwee
--

COPY public.parks (id, name, address, url) FROM stdin;
1	Afton State Park	6959 Peller Avenue South Hastings, MN 55033	https://www.dnr.state.mn.us/state_parks/afton/index.html
2	Banning State Park	P.O. Box 643 Sandstone, MN 55072	https://www.dnr.state.mn.us/state_parks/banning/index.html
3	Bear Head Lake State Park	9301 Bear Head State Park Road Ely, MN 55731	https://www.dnr.state.mn.us/state_parks/bear_head_lake/index.html
4	Beaver Creek Valley State Park	15954 County 1 Caledonia, MN 55921	https://www.dnr.state.mn.us/state_parks/beaver_creek_valley/index.html
5	Big Bog State Recreation Area	P.O. Box 428 Waskish, MN 56685	https://www.dnr.state.mn.us/state_parks/big_bog/index.html
6	Big Stone Lake State Park	35889 Meadowbrook State Park Road Ortonville, MN 56278	https://www.dnr.state.mn.us/state_parks/big_stone_lake/index.html
7	Blue Mounds State Park	1410 161st Street Luverne, MN 56156	https://www.dnr.state.mn.us/state_parks/blue_mounds/index.html
8	Buffalo River State Park	565 155th Street South Glyndon, MN 56547	https://www.dnr.state.mn.us/state_parks/buffalo_river/index.html
9	Camden State Park	1897 Camden Park Road Lynd, MN 56157	https://www.dnr.state.mn.us/state_parks/camden/index.html
10	Carley State Park	c/o Whitewater State Park 19041 Hwy 74	https://www.dnr.state.mn.us/state_parks/carley/index.html
11	Cascade River State Park	3481 West Highway 61 Lutsen, MN 55612	https://www.dnr.state.mn.us/state_parks/cascade_river/index.html
12	Charles A. Lindbergh State Park	1615 Lindbergh Drive South Little Falls, MN 56345	https://www.dnr.state.mn.us/state_parks/charles_a_lindbergh/index.html
13	Crow Wing State Park	3124 State Park Road Brainerd, MN 56401	https://www.dnr.state.mn.us/state_parks/crow_wing/index.html
14	Cuyuna Country State Recreation Area	307 3rd Street Ironton, MN 56455	https://www.dnr.state.mn.us/state_parks/cuyuna_country/index.html
15	Father Hennepin State Park	Mailing P.O. Box 397	https://www.dnr.state.mn.us/state_parks/father_hennepin/index.html
16	Flandrau State Park	1300 Summit Avenue New Ulm, MN 56073	https://www.dnr.state.mn.us/state_parks/flandrau/index.html
17	Forestville Mystery Cave State Park	21071 County 118 Preston, MN 55965	https://www.dnr.state.mn.us/state_parks/forestville_mystery_cave/index.html
18	Fort Snelling State Park	101 Snelling Lake Road St. Paul, MN 55111	https://www.dnr.state.mn.us/state_parks/fort_snelling/index.html
19	Franz Jevne State Park	State Highway 11 Birchdale, MN 56629	https://www.dnr.state.mn.us/state_parks/franz_jevne/index.html
20	Frontenac State Park	29223 County 28 Boulevard Frontenac, MN 55026	https://www.dnr.state.mn.us/state_parks/frontenac/index.html
21	Garden Island State Recreation Area	Write c/o Zippel Bay State Park 3684 - 54th Ave. NW Williams, MN 56686	https://www.dnr.state.mn.us/state_parks/garden_island/index.html
22	George H. Crosby Manitou State Park	Send mail c/o Tettegouche State Park 5702 Highway 61	https://www.dnr.state.mn.us/state_parks/george_crosby_manitou/index.html
23	Glacial Lakes State Park	25022 County Road 41 Starbuck, MN 56381	https://www.dnr.state.mn.us/state_parks/glacial_lakes/index.html
24	Glendalough State Park	24869 Whitetail Lane Battle Lake, MN 56515	https://www.dnr.state.mn.us/state_parks/glendalough/index.html
25	Gooseberry Falls State Park	3206 Highway 61 East Two Harbors, MN 55616	https://www.dnr.state.mn.us/state_parks/gooseberry_falls/index.html
26	Grand Portage State Park	9393 East Highway 61 Grand Portage, MN 55605	https://www.dnr.state.mn.us/state_parks/grand_portage/index.html
27	Great River Bluffs State Park	43605 Kipp Drive Winona, MN 55987	https://www.dnr.state.mn.us/state_parks/great_river_bluffs/index.html
28	Hayes Lake State Park	48990 County Road 4 Roseau, MN 56751	https://www.dnr.state.mn.us/state_parks/hayes_lake/index.html
29	Hill-Annex Mine State Park	Hill Annex Mine State Park C/O Scenic State Park	https://www.dnr.state.mn.us/state_parks/hill_annex_mine/index.html
30	Interstate State Park	PO Box 254 307 Milltown Road	https://www.dnr.state.mn.us/state_parks/interstate/index.html
31	Itasca State Park	36750 Main Park Drive Park Rapids, MN 56470	https://www.dnr.state.mn.us/state_parks/itasca/index.html
32	Jay Cooke State Park	780 Highway 210 Carlton, MN 55718	https://www.dnr.state.mn.us/state_parks/jay_cooke/index.html
33	John A. Latsch State Park	c/o Whitewater State Park 19041 Highway 74	https://www.dnr.state.mn.us/state_parks/john_latsch/index.html
34	Judge C. R. Magney State Park	4051 East Highway 61 Grand Marais, MN 55604	https://www.dnr.state.mn.us/state_parks/judge_cr_magney/index.html
35	Lac Qui Parle State Park	14047 20th Street Northwest Watson, MN 56295	https://www.dnr.state.mn.us/state_parks/lac_qui_parle/index.html
36	Lake Bronson State Park	3793 230th St Box 9	https://www.dnr.state.mn.us/state_parks/lake_bronson/index.html
37	Lake Carlos State Park	2601 County Road 38 Northeast Carlos, MN 56319	https://www.dnr.state.mn.us/state_parks/lake_carlos/index.html
38	Lake Louise State Park	c/o Forestville/Mystery Cave State Park: 21071 County 118 Preston, MN 55965	https://www.dnr.state.mn.us/state_parks/lake_louise/index.html
39	Lake Maria State Park	11411 Clementa Avenue Northwest Monticello, MN 55362	https://www.dnr.state.mn.us/state_parks/lake_maria/index.html
40	Lake Shetek State Park	163 State Park Road Currie, MN 56123	https://www.dnr.state.mn.us/state_parks/lake_shetek/index.html
41	McCarthy Beach State Park	7622 McCarthy Beach Road Side Lake, MN 55781	https://www.dnr.state.mn.us/state_parks/mccarthy_beach/index.html
42	Maplewood State Park	39721 Park Entrance Road Pelican Rapids, MN 56572	https://www.dnr.state.mn.us/state_parks/maplewood/index.html
43	Mille Lacs Kathio State Park	15066 Kathio State Park Road Onamia, MN 56359	https://www.dnr.state.mn.us/state_parks/mille_lacs_kathio/index.html
44	Minneopa State Park	54497 Gadwall Road Mankato, MN 56001	https://www.dnr.state.mn.us/state_parks/minneopa/index.html
45	Minnesota Valley State Recreation Area	19825 Park Boulevard Jordan, MN 55352	https://www.dnr.state.mn.us/state_parks/minnesota_valley/index.html
46	Monson Lake State Park	1690 15th Street Northeast Sunburg, MN 56289	https://www.dnr.state.mn.us/state_parks/monson_lake/index.html
47	Myre-Big Island State Park	19499 780th Avenue Albert Lea, MN 56007	https://www.dnr.state.mn.us/state_parks/myre_big_island/index.html
48	Nerstrand Big Woods State Park	9700 170th Street East Nerstrand, MN 55053	https://www.dnr.state.mn.us/state_parks/nerstrand_big_woods/index.html
49	Old Mill State Park	33489 240th Avenue Northwest Argyle, MN 56713	https://www.dnr.state.mn.us/state_parks/old_mill/index.html
50	Red River State Recreation Area	515 2nd Street Northwest East Grand Forks, MN 56721	https://www.dnr.state.mn.us/state_parks/red_river/index.html
51	Rice Lake State Park	8485 Rose Street Owatonna, MN 55060	https://www.dnr.state.mn.us/state_parks/rice_lake/index.html
52	St. Croix State Park	30065 St. Croix Park Road Hinckley, MN 55037	https://www.dnr.state.mn.us/state_parks/st_croix/index.html
53	Sakatah Lake State Park	50499 Sakatah Lake State Park Road Waterville, MN 56096	https://www.dnr.state.mn.us/state_parks/sakatah_lake/index.html
54	Savanna Portage State Park	55626 Lake Place McGregor, MN 55760	https://www.dnr.state.mn.us/state_parks/savanna_portage/index.html
55	Scenic State Park	56956 Scenic Highway 7 Bigfork, MN 56628	https://www.dnr.state.mn.us/state_parks/scenic/index.html
56	Sibley State Park	800 Sibley Park Road Northeast New London, MN 56273	https://www.dnr.state.mn.us/state_parks/sibley/index.html
57	Split Rock Creek State Park	336 50th Avenue Jasper, MN 56144	https://www.dnr.state.mn.us/state_parks/split_rock_creek/index.html
58	Split Rock Lighthouse State Park	3755 Split Rock Lighthouse Road Two Harbors, MN 55616	https://www.dnr.state.mn.us/state_parks/split_rock_lighthouse/index.html
59	Temperance River State Park	Send mail c/o Tettegouche State Park 5702 Highway 61	https://www.dnr.state.mn.us/state_parks/temperance_river/index.html
60	Tettegouche State Park	5702 Highway 61 Silver Bay, MN 55614	https://www.dnr.state.mn.us/state_parks/tettegouche/index.html
61	Upper Sioux Agency State Park	5908 Highway 67 Granite Falls, MN 56241	https://www.dnr.state.mn.us/state_parks/upper_sioux_agency/index.html
62	Whitewater State Park	19041 Highway 74 Altura, MN 55910	https://www.dnr.state.mn.us/state_parks/whitewater/index.html
63	Wild River State Park	39797 Park Trail Center City, MN 55012	https://www.dnr.state.mn.us/state_parks/wild_river/index.html
64	William O'Brien State Park	16821 O'Brien Trail North Marine on St. Croix, MN 55047	https://www.dnr.state.mn.us/state_parks/william_obrien/index.html
65	Zippel Bay State Park	3684 54th Avenue Northwest Williams, MN 56686	https://www.dnr.state.mn.us/state_parks/zippel_bay/index.html
\.


--
-- Name: parks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alishahwee
--

SELECT pg_catalog.setval('public.parks_id_seq', 65, true);


--
-- Name: parks parks_pkey; Type: CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT parks_pkey PRIMARY KEY (id);


--
-- Name: activities activities_parks_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_parks_id_fkey FOREIGN KEY (parks_id) REFERENCES public.parks(id);


--
-- Name: images images_parks_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alishahwee
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_parks_id_fkey FOREIGN KEY (parks_id) REFERENCES public.parks(id);


--
-- PostgreSQL database dump complete
--

